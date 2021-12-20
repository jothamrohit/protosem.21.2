#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int16

def leftTickscallback(data):
	rospy.loginfo(data.data)
	
if __name__ == '__main__':
	rospy.init_node('left_encoder_ticks_sub', anonymous=True)
	rospy.Subscriber("/topic_left_ticks", Int16, leftTickscallback)
	rospy.spin()
	
