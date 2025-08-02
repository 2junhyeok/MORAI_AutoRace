#!/usr/bin/env python3
#-*-coding:utf-8-*-

import rospy
from std_msgs.msg import Int32

def CB(msg):  # 3. 콜백 함수 설정
    print(msg.data)

rospy.init_node("sub_node") # 1.노드 이름 설정
rospy.Subscriber("counter", Int32, callback=CB)  # 2. node의 역할 설정
rospy.spin()