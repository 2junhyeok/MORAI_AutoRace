#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Camera Viewer + Lane Follower  ―  Twist 통합 버전
- 속도  & 조향 → /commands/vel  (geometry_msgs/Twist)
- GUI 출력은 메인 루프에서만 수행
"""
import rospy, cv2, numpy as np, math
from sensor_msgs.msg import CompressedImage
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge, CvBridgeError

class CameraViewer:
    def __init__(self):
        rospy.init_node('camera_viewer_twist')
        self.bridge = CvBridge()

        # ───────── publishers
        self.pub_vel = rospy.Publisher('/commands/vel', Twist, queue_size=1)

        # ───────── PID & smoothing (동일)
        self.kp, self.ki, self.kd = 0.5, 0.0, 0.01
        self.error_int = self.error_last = 0.0
        self.steer_buf, self.buf_size = [], 7
        self.prev_steer, self.alpha_ema = 0.0, 0.3
        self.FIXED_SPEED_MPS = 1.0          # 선속도 [m/s]
        self.INVERT_STEER   = True          # +좌회전/우회전 부호 조정

        # ───────── Trackbars & windows
        cv2.namedWindow('Trackbars', cv2.WINDOW_NORMAL | cv2.WINDOW_GUI_EXPANDED)
        cv2.resizeWindow('Trackbars', 400, 250)
        params = [
            ('Wh Hmin',0,179),('Wh Smin',0,255),('Wh Vmin',200,255),
            ('Wh Hmax',179,179),('Wh Smax',64,255),('Wh Vmax',255,255),
            ('Cn Min',50,500),('Cn Max',150,500),('Sb Th',50,255),
            ('TL X%',30,100), ('TR X%',70,100), ('BL X%',0,100), ('BR X%',100,100),
            ('Top Y%',10,100)
        ]
        for name, init, maxi in params:
            cv2.createTrackbar(name, 'Trackbars', init, maxi, lambda x: None)

        # 표시용 창(7개) – 이름만 만들고 위치·크기 고정
        win_specs = {
            'ROI':(0, 0, 320,240), 'BirdsEye':(330, 0, 320,240),
            'White Mask':(660, 0, 320,240), 'Canny Mask':(0,260,320,240),
            'Sobel Mask':(330,260,320,240), 'Combined':(660,260,320,240),
            'Center Fit':(990,130,320,480)
        }
        for wn,(x,y,w,h) in win_specs.items():
            cv2.namedWindow(wn, cv2.WINDOW_NORMAL)
            cv2.moveWindow(wn,x,y);  cv2.resizeWindow(wn,w,h)

        # ───────── 이미지 버퍼 (GUI 스레드 전용)
        self.buff = {k: None for k in win_specs}

        # ───────── subscriber
        rospy.Subscriber('/image_jpeg/compressed',
                         CompressedImage, self.callback, queue_size=1)
        rospy.loginfo("Camera viewer (Twist-only) started")

        # ───────── 메인 GUI 루프
        rate = rospy.Rate(30)                 # 30 Hz로 화면만 갱신
        while not rospy.is_shutdown():
            for wn, img in self.buff.items():
                if img is not None:
                    cv2.imshow(wn, img)
            cv2.waitKey(1)
            rate.sleep()
        cv2.destroyAllWindows()

    # ============================================================
    def callback(self, msg):
        try:
            img = self.bridge.compressed_imgmsg_to_cv2(msg, 'bgr8')
        except CvBridgeError as e:
            rospy.logerr(f"CvBridge Error: {e}")
            return

        # 1) ROI
        h, w = img.shape[:2]
        roi = img[h//2:, :]
        self.buff['ROI'] = roi

        # 2) Birds-Eye
        h_r, w_r = roi.shape[:2]
        tl = cv2.getTrackbarPos('TL X%','Trackbars')/100.0
        tr = cv2.getTrackbarPos('TR X%','Trackbars')/100.0
        bl = cv2.getTrackbarPos('BL X%','Trackbars')/100.0
        br = cv2.getTrackbarPos('BR X%','Trackbars')/100.0
        ty = cv2.getTrackbarPos('Top Y%','Trackbars')/100.0
        src = np.float32([[w_r*tl, h_r*ty],[w_r*tr, h_r*ty],
                          [w_r*br, h_r],[w_r*bl, h_r]])
        dst = np.float32([[0,0],[w_r,0],[w_r,h_r],[0,h_r]])
        M = cv2.getPerspectiveTransform(src, dst)
        warped = cv2.warpPerspective(roi, M, (w_r, h_r))
        self.buff['BirdsEye'] = warped
        # 3) Masks
        hsv = cv2.cvtColor(warped, cv2.COLOR_BGR2HSV)
        wh_min = np.array([cv2.getTrackbarPos(n,'Trackbars')
                           for n in ['Wh Hmin','Wh Smin','Wh Vmin']])
        wh_max = np.array([cv2.getTrackbarPos(n,'Trackbars')
                           for n in ['Wh Hmax','Wh Smax','Wh Vmax']])
        mask_wh = cv2.inRange(hsv, wh_min, wh_max)
        gray = cv2.cvtColor(warped, cv2.COLOR_BGR2GRAY)
        mask_cn = cv2.Canny(gray,
                            cv2.getTrackbarPos('Cn Min','Trackbars'),
                            cv2.getTrackbarPos('Cn Max','Trackbars'))
        sob = cv2.Sobel(gray, cv2.CV_64F, 1, 0, ksize=3)
        _, mask_sb = cv2.threshold(cv2.convertScaleAbs(sob),
                                   cv2.getTrackbarPos('Sb Th','Trackbars'),
                                   255, cv2.THRESH_BINARY)

        self.buff['White Mask'] = mask_wh
        self.buff['Canny Mask'] = mask_cn
        self.buff['Sobel Mask'] = mask_sb

        # 4) Combined
        combined = cv2.bitwise_or(mask_wh,
                    cv2.bitwise_or(mask_cn, mask_sb))
        ker = np.ones((5,5),np.uint8)
        combined = cv2.morphologyEx(combined, cv2.MORPH_CLOSE, ker)
        combined = cv2.morphologyEx(combined, cv2.MORPH_OPEN,  ker)
        hker = cv2.getStructuringElement(cv2.MORPH_RECT,(15,3))
        combined = cv2.morphologyEx(combined, cv2.MORPH_CLOSE, hker)
        self.buff['Combined'] = combined

        # 5) Sliding-window & fit
        hist = np.sum(combined[combined.shape[0]//2:,:], axis=0)
        mid = w_r//2
        leftx  = np.argmax(hist[:mid])
        rightx = np.argmax(hist[mid:]) + mid
        nw, margin, minpix = 9, 100, 50
        window_h = combined.shape[0]//nw
        ys, xs = combined.nonzero()
        lc, rc = leftx, rightx
        l_inds, r_inds = [], []
        for win in range(nw):
            y_low = combined.shape[0]-(win+1)*window_h
            y_high= combined.shape[0]- win   *window_h
            idxL = np.where((ys>=y_low)&(ys<y_high)&
                            (xs>=lc-margin)&(xs<lc+margin))[0]
            idxR = np.where((ys>=y_low)&(ys<y_high)&
                            (xs>=rc-margin)&(xs<rc+margin))[0]
            l_inds.append(idxL); r_inds.append(idxR)
            if len(idxL)>minpix: lc=int(xs[idxL].mean())
            if len(idxR)>minpix: rc=int(xs[idxR].mean())
        left_inds  = np.concatenate(l_inds) if l_inds else []
        right_inds = np.concatenate(r_inds) if r_inds else []
        if left_inds.size==0 or right_inds.size==0:
            return

        ploty = np.linspace(0, combined.shape[0]-1, combined.shape[0])
        lf = np.polyfit(ys[left_inds],  xs[left_inds],  2)
        rf = np.polyfit(ys[right_inds], xs[right_inds], 2)
        xl, xr = np.polyval(lf,ploty), np.polyval(rf,ploty)
        cx = (xl+xr)/2.0
        fit_img = cv2.cvtColor(combined, cv2.COLOR_GRAY2BGR)
        cv2.polylines(fit_img,[np.int32(np.column_stack((xl,ploty)))],
                      False,(0,255,0),1)
        cv2.polylines(fit_img,[np.int32(np.column_stack((xr,ploty)))],
                      False,(255,0,0),1)
        for i,y in enumerate(ploty.astype(int)):
            if i%10==0 and 0<=cx[i]<w_r:
                cv2.circle(fit_img,(int(cx[i]),y),3,(0,0,255),-1)
        self.buff['Center Fit'] = fit_img

        # 6) Pure-Pursuit + PID (동일)
        center_a = (lf[0]+rf[0])/2.0
        curvature = abs(2.0*center_a)
        y_look = int(h_r*(0.4*max(0.5,1.0-curvature*1.5)))
        xl_look, xr_look = np.polyval(lf,y_look), np.polyval(rf,y_look)
        heading_err = math.atan2((xl_look+xr_look)/2 - w_r/2.0, y_look)

        self.error_int += heading_err
        raw = (self.kp*heading_err +
               self.ki*self.error_int +
               self.kd*(heading_err-self.error_last))
        self.error_last = heading_err
        raw = -raw if self.INVERT_STEER else raw

        ema = self.alpha_ema*raw + (1-self.alpha_ema)*self.prev_steer
        self.prev_steer = ema
        self.steer_buf.append(ema)
        if len(self.steer_buf) > self.buf_size: 
            self.steer_buf.pop(0)
        steer_cmd = float(np.median(self.steer_buf))

        tw = Twist()
        tw.linear.x  = self.FIXED_SPEED_MPS
        tw.angular.z = steer_cmd
        self.pub_vel.publish(tw)

if __name__ == '__main__':
    try:
        CameraViewer()
    except rospy.ROSInterruptException:
        pass