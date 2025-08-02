#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import CompressedImage
import numpy as np
import cv2

class CameraNode:
    def __init__(self):
        rospy.Subscriber('/image_jpeg/compressed', CompressedImage, self.image_callback)
        rospy.loginfo("📷 CameraNode 구독 시작됨 (/image_jpeg/compressed)")

    def image_callback(self, msg):
        rospy.loginfo("✅ image_callback 호출됨")
        try:
            np_arr = np.frombuffer(msg.data, np.uint8)
            frame = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)

            if frame is not None:
                rospy.loginfo(f"✅ 디코딩 성공, shape: {frame.shape}")
                cv2.imshow("📷 MORAI Camera", frame)
                cv2.waitKey(30)
            else:
                rospy.logwarn("⚠️ 디코딩 실패 (frame is None)")

        except Exception as e:
            rospy.logerr(f"❌ 이미지 디코딩 오류: {e}")

def main():
    rospy.init_node('camera_node')
    CameraNode()
    rospy.spin()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()
