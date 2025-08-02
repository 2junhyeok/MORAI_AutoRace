#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from std_msgs.msg import Int32

rospy.init_node("pub_node")  # node 이름 설정
pub = rospy.Publisher("/counter", Int32, queue_size=1) # node 역할 설정
int_msg = Int32()
rate = rospy.Rate(10)  # 전송 주기 설정

num = 0
while not rospy.is_shutdown():  # 안 꺼져있을 때 돌아감
    num += 1
    int_msg.data = num
    pub.publish(int_msg)  # publish
    print(num)
    rate.sleep()  #주기