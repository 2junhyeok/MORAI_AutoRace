#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from geometry_msgs.msg import Twist

class Turtle_pub:
    def __init__(self):
        rospy.init_node("turtle_pub_node")
        self.pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=1)
        self.cmd_msg = Twist()
        self.rate = rospy.Rate(1)

    def func(self):
        self.cmd_msg.linear.x = -1
        self.pub.publish(self.cmd_msg)

def main():
    try:
        turtle_pub = Turtle_pub()
        while not rospy.is_shutdown():
            turtle_pub.func()
    except rospy.ROSInterruptException:
        pass

if __name__=="__main__":
    main()