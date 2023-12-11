#!/usr/bin/env python3

import rospy
from std_msgs.msg import String


def clbk(str_msg):
    # count = 0

    # for char in str_msg:
    #      count += 1
    count=12
    rospy.loginfo(f'{count} ')



if __name__=='__main__':
    rospy.init_node('sage_the_healer_subscriber',anonymous=True)

    rospy.Subscriber('riot_hq',String,clbk)


    rospy.spin()