#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from std_msgs.msg import Int32

class Class_pub: 
    def __init__(self):  
        rospy.init_node("pub_node")
        self.pub = rospy.Publisher("/counter", Int32, queue_size=1)
        self.int_msg = Int32()
        self.rate = rospy.Rate(1)

    def func(self):  
        num=0
        while not rospy.is_shutdown():
            num += 1
            self.int_msg.data = num
            self.pub.publish(self.int_msg)
            print(num)
            self.rate.sleep()

def main():
    try:
        class_pub = Class_pub()
        class_pub.func()
        
    except rospy.ROSInternalException:
        pass

if __name__=="__main__":
    main()