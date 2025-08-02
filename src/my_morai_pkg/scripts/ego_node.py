#!/usr/bin/env python3

import rospy
from morai_msgs.msg import EgoVehicleStatus

def callback(data):
    rospy.loginfo("==== EgoVehicleStatus ====")
    rospy.loginfo("Position: x=%.2f, y=%.2f, z=%.2f", data.position.x, data.position.y, data.position.z)
    rospy.loginfo("Velocity: x=%.2f, y=%.2f, z=%.2f", data.velocity.x, data.velocity.y, data.velocity.z)
    rospy.loginfo("Heading: %.2f", data.heading)

def listener():
    rospy.init_node('ego_node', anonymous=True)
    rospy.Subscriber("/Ego_topic", EgoVehicleStatus, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
