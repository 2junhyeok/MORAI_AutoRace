#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Lane Follower – Center Tracking (Twist only, GUI safe)
"""
import rospy, cv2, numpy as np, math
from sensor_msgs.msg import CompressedImage
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge, CvBridgeError

class LaneFollower:
    def __init__(self):
        rospy.init_node("lane_follower_twist")
        self.bridge  = CvBridge()
        self.pub_vel = rospy.Publisher("/commands/vel", Twist, queue_size=1)

        # ─── parameters (rosparam 으로 조정 가능)
        self.kp = rospy.get_param("~kp", 0.5)
        self.ki = rospy.get_param("~ki", 0.0)
        self.kd = rospy.get_param("~kd", 0.01)
        self.v_ref = rospy.get_param("~speed_mps", 1.2)
        self.lane_w_px = rospy.get_param("~lane_width_pix", 240)   # BirdsEye 픽셀 차폭
        self.invert = rospy.get_param("~invert_steer", True)

        # ─── PID state
        self.err_i = self.err_last = 0.0
        self.alpha, self.buf_size = 0.3, 7
        self.prev_steer, self.buf = 0.0, []

        # ─── GUI & Trackbars
        self._init_gui()

        # ─── image buffer (for main GUI loop)
        self.buff = {"ROI":None, "BirdsEye":None, "Combined":None, "Center":None}

        # ─── subscriber
        rospy.Subscriber("/image_jpeg/compressed",
                         CompressedImage, self.cb_img, queue_size=1)

        rospy.loginfo("Lane-Follower (GUI safe) started")

        # ─── main GUI loop in *main thread*
        rate = rospy.Rate(30)
        while not rospy.is_shutdown():
            for wn,img in self.buff.items():
                if img is not None: cv2.imshow(wn,img)
            cv2.waitKey(1)
            rate.sleep()
        cv2.destroyAllWindows()

    # ───────────────────────── GUI init
    def _init_gui(self):
        cv2.namedWindow('Trackbars', cv2.WINDOW_NORMAL | cv2.WINDOW_GUI_EXPANDED)
        cv2.resizeWindow('Trackbars',400,250)
        for name,init,maxi in [
            ('Wh Hmin',0,179),('Wh Smin',0,255),('Wh Vmin',200,255),
            ('Wh Hmax',179,179),('Wh Smax',64,255),('Wh Vmax',255,255),
            ('Cn Min',50,500),('Cn Max',150,500),('Sb Th',50,255),
            ('TL X%',30,100),('TR X%',70,100),('BL X%',0,100),
            ('BR X%',100,100),('Top Y%',10,100)
        ]:
            cv2.createTrackbar(name,'Trackbars',init,maxi,lambda x:None)

        # small helper for window creation
        def make(name,x,y,w,h):
            cv2.namedWindow(name,cv2.WINDOW_NORMAL)
            cv2.moveWindow(name,x,y); cv2.resizeWindow(name,w,h)
        make('ROI',0,0,320,240); make('BirdsEye',330,0,320,240)
        make('Combined',660,0,320,240); make('Center',990,130,320,480)

    # ───────────────────────── image callback
    def cb_img(self,msg):
        try:
            img = self.bridge.compressed_imgmsg_to_cv2(msg,'bgr8')
        except CvBridgeError: return

        h,w = img.shape[:2]
        roi  = img[h//2:,:]
        self.buff['ROI'] = roi

        combined, warped = self.preprocess(roi)
        self.buff['BirdsEye'] = warped
        self.buff['Combined'] = combined

        xl,xr,ok = self.polyfit_lanes(combined)
        if not ok: return

        center = (xl+xr)/2
        y_look = int(0.4*combined.shape[0])
        x_goal = center[y_look]

        # visualisation
        vis = cv2.cvtColor(combined,cv2.COLOR_GRAY2BGR)
        for y,x in enumerate(center[::10]):
            cv2.circle(vis,(int(x),y*10),3,(0,0,255),-1)
        self.buff['Center'] = vis

        # heading error
        err = math.atan2(x_goal - w/2, y_look)
        self.err_i += err
        raw = self.kp*err + self.ki*self.err_i + self.kd*(err-self.err_last)
        self.err_last = err
        raw = -raw if self.invert else raw

        ema = self.alpha*raw + (1-self.alpha)*self.prev_steer
        self.prev_steer = ema
        self.buf.append(ema); 
        if len(self.buf)>self.buf_size: self.buf.pop(0)
        steer = float(np.median(self.buf))

        tw = Twist(); tw.linear.x = self.v_ref; tw.angular.z = steer
        self.pub_vel.publish(tw)

    # ───────────────────────── preprocess
    def preprocess(self,roi):
        h_r,w_r = roi.shape[:2]
        # perspective params
        tl = cv2.getTrackbarPos('TL X%','Trackbars')/100.0
        tr = cv2.getTrackbarPos('TR X%','Trackbars')/100.0
        bl = cv2.getTrackbarPos('BL X%','Trackbars')/100.0
        br = cv2.getTrackbarPos('BR X%','Trackbars')/100.0
        ty = cv2.getTrackbarPos('Top Y%','Trackbars')/100.0
        src = np.float32([[w_r*tl,h_r*ty],[w_r*tr,h_r*ty],
                          [w_r*br,h_r],[w_r*bl,h_r]])
        dst = np.float32([[0,0],[w_r,0],[w_r,h_r],[0,h_r]])
        warped = cv2.warpPerspective(roi,
                    cv2.getPerspectiveTransform(src,dst),(w_r,h_r))

        hsv  = cv2.cvtColor(warped,cv2.COLOR_BGR2HSV)
        wh_min = np.array([cv2.getTrackbarPos(n,'Trackbars')
                           for n in ['Wh Hmin','Wh Smin','Wh Vmin']])
        wh_max = np.array([cv2.getTrackbarPos(n,'Trackbars')
                           for n in ['Wh Hmax','Wh Smax','Wh Vmax']])
        mask_wh = cv2.inRange(hsv,wh_min,wh_max)

        gray = cv2.cvtColor(warped,cv2.COLOR_BGR2GRAY)
        cn_min = cv2.getTrackbarPos('Cn Min','Trackbars')
        cn_max = cv2.getTrackbarPos('Cn Max','Trackbars')
        mask_cn = cv2.Canny(gray,cn_min,cn_max)
        sob  = cv2.Sobel(gray,cv2.CV_64F,1,0,ksize=3)
        sb_th = cv2.getTrackbarPos('Sb Th','Trackbars')
        _,mask_sb = cv2.threshold(cv2.convertScaleAbs(sob),sb_th,255,
                                  cv2.THRESH_BINARY)

        combined = cv2.bitwise_or(mask_wh,cv2.bitwise_or(mask_cn,mask_sb))
        ker_big = cv2.getStructuringElement(cv2.MORPH_RECT,(25,5))
        combined = cv2.morphologyEx(combined,cv2.MORPH_CLOSE,ker_big)
        combined = cv2.morphologyEx(combined,cv2.MORPH_OPEN,
                                    np.ones((5,5),np.uint8))
        return combined, warped

    # ───────────────────────── polyfit_lanes
    def polyfit_lanes(self,binary):
        h,w = binary.shape
        hist = np.sum(binary[h//2:,:],axis=0)
        mid  = w//2
        lx,rx = np.argmax(hist[:mid]), np.argmax(hist[mid:])+mid

        nw,margin,minpix = 9,120,20
        ys,xs = binary.nonzero()
        window_h = h//nw
        l_inds,r_inds=[],[]
        for i in range(nw):
            y_low,y_high = h-(i+1)*window_h, h-i*window_h
            in_L = np.where((ys>=y_low)&(ys<y_high)&
                            (xs>=lx-margin)&(xs<lx+margin))[0]
            in_R = np.where((ys>=y_low)&(ys<y_high)&
                            (xs>=rx-margin)&(xs<rx+margin))[0]
            if len(in_L)>minpix: lx=int(xs[in_L].mean())
            if len(in_R)>minpix: rx=int(xs[in_R].mean())
            l_inds.append(in_L); r_inds.append(in_R)

        l_inds=np.concatenate(l_inds); r_inds=np.concatenate(r_inds)
        if l_inds.size==0 and r_inds.size==0: return None,None,False
        ploty=np.linspace(0,h-1,h)

        if l_inds.size and r_inds.size:
            xl=np.polyval(np.polyfit(ys[l_inds],xs[l_inds],2),ploty)
            xr=np.polyval(np.polyfit(ys[r_inds],xs[r_inds],2),ploty)
        elif l_inds.size:
            xl=np.polyval(np.polyfit(ys[l_inds],xs[l_inds],2),ploty)
            xr=xl+self.lane_w_px
        else:
            xr=np.polyval(np.polyfit(ys[r_inds],xs[r_inds],2),ploty)
            xl=xr-self.lane_w_px
        return xl,xr,True

# ────────────────────────────────────────────────
if __name__=="__main__":
    try:
        LaneFollower()
    except rospy.ROSInterruptException:
        pass
