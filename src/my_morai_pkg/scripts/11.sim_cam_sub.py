#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from sensor_msgs.msg import CompressedImage
from cv_bridge import CvBridge
import cv2

class Turtle_sub:
    def __init__(self):
        rospy.init_node("turtle_sub_node")
        rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.cam_CB)
        self.image_msg = CompressedImage()
        self.bridge = CvBridge()

    def cam_CB(self, msg):
        self.image_msg = msg
        cv_img = self.bridge.compressed_imgmsg_to_cv2(self.image_msg)
        cv2.imshow("cv_img", cv_img)
        cv2.waitKey(1)
        # print("cam")

def main():
    try:
        Turtle_sub = Turtle_sub()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

if __name__=="__main__":
    main()