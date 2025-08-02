#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import LaserScan

class LidarNode:
    def __init__(self):
        self.sub = rospy.Subscriber('/lidar2D', LaserScan, self.lidar_callback)

    def lidar_callback(self, msg):
        center_idx = len(msg.ranges) // 2
        center_distance = msg.ranges[center_idx]
        rospy.loginfo(f"📡 라이다 중앙 거리: {center_distance:.2f} m")

def main():
    rospy.init_node('lidar_node')
    LidarNode()
    rospy.loginfo("✅ 라이다 노드 실행 중... /lidar2D 수신 대기")
    rospy.spin()

if __name__ == '__main__':
    main()

