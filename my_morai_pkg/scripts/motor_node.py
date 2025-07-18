#!/usr/bin/env python3

import rospy
import math
import numpy as np
import cv2
from sensor_msgs.msg import CompressedImage
from std_msgs.msg import Float64
from cv_bridge import CvBridge
class MoraiLaneFollower:
    def __init__(self):
        rospy.init_node('morai_lane_follower')

        self.speed_pub = rospy.Publisher('/commands/motor/speed', Float64, queue_size=10)
        self.steer_pub = rospy.Publisher('/commands/servo/position', Float64, queue_size=10)
        self.bridge = CvBridge()

        self.image_sub = rospy.Subscriber('/image_jpeg/compressed', CompressedImage, self.image_callback)

        # Params
        self.FIX_SPEED = 400
        self.LOOKAHEAD_PIX = 100
        self.STEER_GAIN = 0.5  # 낮춰서 흔들림 방지
        self.MIN_PIXELS = 300
        self.ALPHA = 0.5

        # HSV for yellow & white
        self.WHITE_LOWER = np.array([0, 0, 192])
        self.WHITE_UPPER = np.array([179, 64, 255])
        self.YELLOW_LOWER = np.array([20, 143, 0])
        self.YELLOW_UPPER = np.array([180, 255, 255])

        self.image = None
        self.steer_buffer = []

        rospy.Timer(rospy.Duration(0.1), self.control_loop)
        rospy.loginfo("Morai Lane Follower Node Started")
        rospy.spin()

    def image_callback(self, msg):
        try:
            np_arr = np.frombuffer(msg.data, np.uint8)
            self.image = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        except Exception as e:
            rospy.logwarn(f"[Image Callback Error]: {e}")

    def control_loop(self, event):
        if self.image is None:
            return
        self.lane_follow()
     

    def lane_follow(self):
        h, w = self.image.shape[:2]
        y0 = int(h * 0.5)
        roi = self.image[y0:, :]
        hsv = cv2.cvtColor(roi, cv2.COLOR_BGR2HSV)

        wm = cv2.inRange(hsv, self.WHITE_LOWER, self.WHITE_UPPER)
        ym = cv2.inRange(hsv, self.YELLOW_LOWER, self.YELLOW_UPPER)
        cv2.imshow('Camera View', self.image)
        cv2.imshow('White Mask', wm)
        cv2.imshow('Yellow Mask', ym)
        cv2.waitKey(1)

        wy, wx = np.where(wm > 0)
        yy, yx = np.where(ym > 0)

        if len(wx) + len(yx) >= self.MIN_PIXELS and len(wx) > 0 and len(yx) > 0:
            real_wy, real_yy = wy + y0, yy + y0
            coef_w = np.polyfit(real_wy, wx, 2)
            coef_y = np.polyfit(real_yy, yx, 2)
            LOOK_Y = h - self.LOOKAHEAD_PIX
            xw = np.polyval(coef_w, LOOK_Y)
            xy = np.polyval(coef_y, LOOK_Y)
            target_x = self.ALPHA * xy + (1 - self.ALPHA) * xw
        else:
            target_x = w / 2.0

        dx = target_x - w / 2.0
        dy = self.LOOKAHEAD_PIX
        steer_rad = math.atan2(dx, dy)
        steer_deg = steer_rad * 180.0 / math.pi * self.STEER_GAIN

        self.publish_cmd(steer_deg, self.FIX_SPEED)

    def publish_cmd(self, steer, speed):
        self.steer_buffer.append(steer)
        if len(self.steer_buffer) > 5:
            self.steer_buffer.pop(0)
        smoothed_steer = sum(self.steer_buffer) / len(self.steer_buffer)
        self.speed_pub.publish(Float64(data=speed))
        self.steer_pub.publish(Float64(data=smoothed_steer))

if __name__ == '__main__':
    try:
        MoraiLaneFollower()
    except rospy.ROSInterruptException:
        pass