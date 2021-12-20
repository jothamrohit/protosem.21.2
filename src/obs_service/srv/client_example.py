#!/usr/bin/env python3

import rospy

from obs_service.srv import service_example

import sys

rospy.init_node('client call')

rospy.wait_for_service('service_obs')
srv=rospy.ServiceProxy('service_obs',service _example)

result=srv(0)

print(result)
