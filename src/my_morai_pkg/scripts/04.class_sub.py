#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from std_msgs.msg import Int32

class Class_sub: 
    def __init__(self):  
        rospy.init_node("sub_node")
        rospy.Subscriber("counter", Int32, callback=self.CB)

    def CB(self, msg):
        num = msg.data
        print(num)

def main():
    try:
        class_sub = Class_sub()
        rospy.spin()
        
    except rospy.ROSInterruptException:
        pass

if __name__=="__main__":
    main()