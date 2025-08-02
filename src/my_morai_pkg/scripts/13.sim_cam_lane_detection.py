#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from sensor_msgs.msg import CompressedImage
from cv_bridge import CvBridge
import cv2
import numpy as np
class Lane_sub:
    def __init__(self):
        rospy.init_node("lane_sub_node")
        rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.cam_CB)
        self.image_msg = CompressedImage()
        self.bridge = CvBridge()

    def cam_CB(self, msg):
        #print("asd")
        img = self.bridge.compressed_imgmsg_to_cv2(msg)
        y, x = img.shape[0:2]
        img_hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        h, s, v = cv2.split(img_hsv)
        #
        #
        #
        yellow_lower = np.array([15, 128, 0])
        yellow_upper = np.array([40, 255, 255])
        yellow_range = cv2. inRange(img_hsv, yellow_lower, yellow_upper)
        white_lower = np.array([0, 0, 192])
        white_upper = np.array([179, 64, 255])
        white_range = cv2.inRange(img_hsv, white_lower, white_upper)
        combined_range = cv2.bitwise_or(yellow_range, white_range)
        filtered_img = cv2.bitwise_and(img, img, mask=combined_range)
        src_point1 = [0, 420]
        src_point2 = [275, 260]
        src_point3 = [y - 275, 260]
        src_point4 = [y, 420]
        src_points = np.float32([src_point1, src_point2, src_point3, src_point4])

        dst_point1 = [x//8, 480]
        dst_point2 = [x//8, 0]
        dst_point3 = [x//8*7, 0]
        dst_point4 = [x//8*7, 480]
        dst_points = np.float32([dst_point1, dst_point2, dst_point3, dst_point4])

        matrix = cv2.getPerspectiveTransform(src_points, dst_points)
        warped_img = cv2.warpPerspective(filtered_img, matrix, [y,x])
        grayed_img = cv2.cvtColor(warped_img, cv2.COLOR_BGR2GRAY)
        bin_img = np.zeros_like(grayed_img)
        bin_img[grayed_img>0] = 255
        cv2.imshow("img", img)
        cv2.imshow("yellow_range", yellow_range)
        cv2.imshow("white_range", white_range)
        cv2.imshow("combined_range", combined_range)
        cv2.imshow("filtered_img", combined_range)
        cv2.imshow("warped_img", warped_img)
        #
        cv2.waitKey(1)

def main():
    try:
        Lane_sub = Lane_sub()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

if __name__=="__main__":
    main()