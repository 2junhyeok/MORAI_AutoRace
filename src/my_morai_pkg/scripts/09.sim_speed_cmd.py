#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from turtlesim.msg import Pose, Color
from std_msgs.msg import Float64

class Turtle_sub:
    def __init__(self):
        rospy.init_node("sim_cmd_node")
        self.pub = rospy.Publisher("/commands/motor/speed", Float64, queue_size=1)
        self.cmd_msg = Float64
        self.rate = rospy.Rate(100)
        self.speed = 0

    def func(self):
        self.speed += 1
        self.speed = self.speed % 2401

        self.cmd_msg.data = self.speed
        