#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import Float64
from math import *
import os

class Turtle_sub:
    def __init__(self):
        rospy.init_node("sim_e_stop")
        self.pub = rospy.Publisher("/commands/motor/speed", Float64, queue_size=1)
        rospy.Subscriber("/lidar2D", LaserScan.self.lidar_CB)
        self.scan_msg = LaserScan()
        self.speed_msg = Float64

    def lidar_CB(self, msg):
        os.system("clear")
        self.scan_msg = msg
        degree_min = self.scan_msg.angle_min * 180/pi
        degree_max = self.scan_msg.angle_max * 180/pi
        degree_angle_increment = self.scan_msg.angle_increment * 180/pi

        degrees = [degree_min + degree_angle_increment * index for index, value in enumerate(self.scan_msg.ranges)]
        obstacle_degrees = []
        for index, value in enumerate(self.scan_msg.ranges):
            if -30<degrees<30 and 0<value<1.5:  # 각도값, 거리값 함께 고려
                obstacle_degrees.append(degrees[index])
            else:
                pass
        print(len(obstacle_degrees))
        print(obstacle_degrees)
        if len(obstacle_degrees) != 0:
            self.speed_msg.data = 0
        else:
            self.speed_msg.data = 1200
        
        self.pub.publish(self.speed_msg)

def main():
    try:
        Turtle_sub = Turtle_sub()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass