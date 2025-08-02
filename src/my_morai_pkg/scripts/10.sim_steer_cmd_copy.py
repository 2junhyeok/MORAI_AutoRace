#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from turtlesim.msg import Pose, Color
from std_msgs.msg import Float64

class Turtle_sub:
    def __init__(self):
        rospy.init_node("sim_cmd_node")
        self.pub = rospy.Publisher("/commands/servo/position", Float64, queue_size=1)
        self.cmd_msg = Float64()
        self.rate = rospy.Rate(10)
        self.steer = 0  # value : 0-1 -> degree: -19.5~19.5
        # value * 2 => 0-2, (value * 2)-1 => -1~1, ((value * 2)-1) * 19.5
        # self.steer / 19.5 => -1~1, (self.steer / 19.5) + 1 => 0~2, ((self.steer / 19.5) +1) /2 => 0-1

    def func(self):
        self.steer += 0.01
        if self.steer >= 1:
            self.steer = 1
        self.cmd_msg.data = self.steer
        self.pub.publish(self.cmd_msg)
        print(f"steer:{self.cmd_msg.data}")
        self.rate.sleep()