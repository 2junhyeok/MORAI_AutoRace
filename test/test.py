# -*- coding: utf-8 -*-
"""
Camera Viewer + Lane Follower with Pure Pursuit and PID (Midpoint Averaging)
- /image_jpeg/compressed 구독
- ROI, BirdsEye, Masks, Combined, Center Fit 출력
- Sliding-window 탐지, 2차 다항식 피팅
- centerline 고정 차폭 보완 적용
- Pure Pursuit + PID 제어
- Steering EMA + Median smoothing
- Homography 기반 버드아이뷰 개선 (대응점 수동 설정)
"""
import rospy
import cv2
import numpy as np
import math
from sensor_msgs.msg import CompressedImage
from std_msgs.msg import Float64
from cv_bridge import CvBridge, CvBridgeError

class CameraViewer:
    def __init__(self):
        rospy.init_node('camera_viewer')
        self.bridge = CvBridge()

        # Publishers
        self.pub_speed = rospy.Publisher('/commands/motor/speed', Float64, queue_size=1)
        self.pub_steer = rospy.Publisher('/commands/servo/position', Float64, queue_size=1)

        # PID params
        self.kp, self.ki, self.kd = 0.5, 0.0, 0.01
        self.error_int, self.error_last = 0.0, 0.0

        # Steering smoothing
        self.steer_buffer, self.buf_size = [], 7
        self.prev_steer = 0.0
        self.steer_alpha = 0.3

        # Fixed settings
        self.FIXED_SPEED = 800
        self.INVERT_STEER = True
        self.LANE_WIDTH = 350  # 픽셀 단위 차폭 (실제 환경에 맞게 조정)

        # Trackbars
        cv2.namedWindow('Trackbars', cv2.WINDOW_NORMAL | cv2.WINDOW_GUI_EXPANDED)
        cv2.resizeWindow('Trackbars', 400, 250)
        params = [
            ('Wh Hmin',0,179),('Wh Smin',0,255),('Wh Vmin',200,255),
            ('Wh Hmax',179,179),('Wh Smax',64,255),('Wh Vmax',255,255),
            ('Cn Min',50,500),('Cn Max',150,500),('Sb Th',50,255),
            ('TL X%',70,100),('TR X%',30,100),('BL X%',100,100),('BR X%',0,100),('Top Y%',10,100)
        ]
        for name, init, maxi in params:
            cv2.createTrackbar(name, 'Trackbars', init, maxi, lambda x: None)

        # Display windows
        for win in ['ROI','BirdsEye','White Mask','Canny Mask','Sobel Mask','Combined','Center Fit']:
            cv2.namedWindow(win, cv2.WINDOW_NORMAL)
        cv2.startWindowThread()

        # Homography 대응점 (예시, 실제 환경에 맞게 조정 필요)
        self.homography_src = np.float32([[100, 100], [540, 100], [540, 380], [100, 380]])
        self.homography_dst = np.float32([[0,0], [440,0], [440,320], [0,320]])
        self.homography_M = cv2.getPerspectiveTransform(self.homography_src, self.homography_dst)

        # Subscribe
        rospy.Subscriber('/image_jpeg/compressed', CompressedImage, self.callback, queue_size=1)
        rospy.loginfo("Camera viewer + lane follower started")
        rospy.spin()

    def callback(self, msg):
        try:
            img = self.bridge.compressed_imgmsg_to_cv2(msg, 'bgr8')
        except CvBridgeError as e:
            rospy.logerr(f"CvBridge Error: {e}")
            return

        h, w = img.shape[:2]

        # ROI: 하단 절반
        roi = img[h//2:, :]
        cv2.imshow('ROI', roi)

        # Homography 적용 버드아이뷰 (원본 ROI 기준)
        warped = cv2.warpPerspective(roi, self.homography_M, (440, 320))
        warped_display = cv2.flip(warped, 1)
        cv2.imshow('BirdsEye', warped_display)

        # HSV 마스크
        hsv = cv2.cvtColor(warped, cv2.COLOR_BGR2HSV)
        wh_min = np.array([cv2.getTrackbarPos(n,'Trackbars') for n in ['Wh Hmin','Wh Smin','Wh Vmin']])
        wh_max = np.array([cv2.getTrackbarPos(n,'Trackbars') for n in ['Wh Hmax','Wh Smax','Wh Vmax']])
        mask_wh = cv2.inRange(hsv, wh_min, wh_max)

        # Canny, Sobel 마스크
        gray = cv2.cvtColor(warped, cv2.COLOR_BGR2GRAY)
        mask_cn = cv2.Canny(gray,
                            cv2.getTrackbarPos('Cn Min','Trackbars'),
                            cv2.getTrackbarPos('Cn Max','Trackbars'))
        sob = cv2.Sobel(gray, cv2.CV_64F, 1, 0, ksize=3)
        _, mask_sb = cv2.threshold(cv2.convertScaleAbs(sob),
                                   cv2.getTrackbarPos('Sb Th','Trackbars'),
                                   255, cv2.THRESH_BINARY)

        cv2.imshow('White Mask', mask_wh)
        cv2.imshow('Canny Mask', mask_cn)
        cv2.imshow('Sobel Mask', mask_sb)

        # Combine + morphology
        combined = cv2.bitwise_or(mask_wh, cv2.bitwise_or(mask_cn, mask_sb))
        ker = np.ones((5,5), np.uint8)
        combined = cv2.morphologyEx(combined, cv2.MORPH_CLOSE, ker)
        combined = cv2.morphologyEx(combined, cv2.MORPH_OPEN, ker)
        hker = cv2.getStructuringElement(cv2.MORPH_RECT, (15,3))
        combined = cv2.morphologyEx(combined, cv2.MORPH_CLOSE, hker)
        cv2.imshow('Combined', combined)

        # Sliding window 기반 히스토그램
        hist = np.sum(combined[combined.shape[0]//2:,:], axis=0)
        mid = combined.shape[1] // 2
        leftx_base = np.argmax(hist[:mid])
        rightx_base = np.argmax(hist[mid:]) + mid
        nw, margin, minpix = 9, 100, 50
        window_h = combined.shape[0] // nw
        ys, xs = combined.nonzero()
        lc, rc = leftx_base, rightx_base
        left_inds, right_inds = [], []

        for win in range(nw):
            y_low = combined.shape[0] - (win+1)*window_h
            y_high = combined.shape[0] - win*window_h
            lx_min, lx_max = lc - margin, lc + margin
            rx_min, rx_max = rc - margin, rc + margin
            idxL = np.where((ys>=y_low)&(ys<y_high)&(xs>=lx_min)&(xs<lx_max))[0]
            idxR = np.where((ys>=y_low)&(ys<y_high)&(xs>=rx_min)&(xs<rx_max))[0]
            left_inds.append(idxL)
            right_inds.append(idxR)
            if len(idxL) > minpix:
                lc = int(xs[idxL].mean())
            if len(idxR) > minpix:
                rc = int(xs[idxR].mean())

        left_inds = np.concatenate(left_inds)
        right_inds = np.concatenate(right_inds)

        if left_inds.size or right_inds.size:
            # 좌우 차선 좌표 수집
            ys_left, xs_left = ys[left_inds], xs[left_inds]
            ys_right, xs_right = ys[right_inds], xs[right_inds]

            # 고정 차폭 보완
            if left_inds.size and right_inds.size:
                lf = np.polyfit(ys_left, xs_left, 2)
                rf = np.polyfit(ys_right, xs_right, 2)
            elif left_inds.size:  # 오른쪽 차선 추정
                lf = np.polyfit(ys_left, xs_left, 2)
                # 반대 차선 x = left + 고정 차폭
                xs_right_est = xs_left + self.LANE_WIDTH
                rf = np.polyfit(ys_left, xs_right_est, 2)
            elif right_inds.size:  # 왼쪽 차선 추정
                rf = np.polyfit(ys_right, xs_right, 2)
                xs_left_est = xs_right - self.LANE_WIDTH
                lf = np.polyfit(ys_right, xs_left_est, 2)

            ploty = np.linspace(0, combined.shape[0]-1, combined.shape[0])
            xl = np.polyval(lf, ploty)
            xr = np.polyval(rf, ploty)
            cx = (xl + xr) / 2.0

            fit_img = cv2.cvtColor(combined, cv2.COLOR_GRAY2BGR)
            ptsL = np.int32(np.column_stack((xl.astype(int), ploty.astype(int))))
            ptsR = np.int32(np.column_stack((xr.astype(int), ploty.astype(int))))
            cv2.polylines(fit_img, [ptsL], False, (0,255,0), 1)
            cv2.polylines(fit_img, [ptsR], False, (255,0,0), 1)
            for i, y in enumerate(ploty.astype(int)):
                if i % 10 == 0 and 0 <= cx[i] < combined.shape[1]:
                    cv2.circle(fit_img, (int(cx[i]), y), 3, (0,0,255), -1)
            cv2.imshow('Center Fit', fit_img)

            # 제어 계산 (기존 Pure Pursuit + PID)
            center_a = (lf[0] + rf[0]) / 2.0
            curvature = abs(2.0 * center_a)
            base_ratio = 0.4
            dyn_ratio = base_ratio * max(0.5, 1.0 - curvature * 1.5)
            y_look = int(combined.shape[0] * dyn_ratio)
            xl_look = float(np.polyval(lf, y_look))
            xr_look = float(np.polyval(rf, y_look))
            x_look = (xl_look + xr_look) / 2.0
            dx = x_look - combined.shape[1]/2.0
            heading_err = math.atan2(dx, y_look)
            err = heading_err
            self.error_int += err
            d_err = err - self.error_last
            raw_steer = self.kp*err + self.ki*self.error_int + self.kd*d_err
            self.error_last = err
            if self.INVERT_STEER:
                raw_steer = -raw_steer
            ema_steer = self.steer_alpha*raw_steer + (1 - self.steer_alpha)*self.prev_steer
            self.prev_steer = ema_steer
            self.steer_buffer.append(ema_steer)
            if len(self.steer_buffer) > self.buf_size:
                self.steer_buffer.pop(0)
            smooth = float(np.median(self.steer_buffer))
            self.pub_speed.publish(Float64(self.FIXED_SPEED))
            left_min = 4.451986206005509e-05
            right_max = 0.99995548013794
            center = (left_min + right_max) / 2.0
            half_range = (right_max - left_min) / 2.0
            servo_cmd = center + smooth * half_range
            servo_cmd = max(left_min, min(right_max, servo_cmd))
            self.pub_steer.publish(Float64(servo_cmd))

        cv2.waitKey(1)

if __name__=='__main__':
    try:
        CameraViewer()
    except rospy.ROSInterruptException:
        pass
