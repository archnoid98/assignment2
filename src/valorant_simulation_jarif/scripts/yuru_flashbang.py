#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from valorant_simulation_jarif.msg import yoyo


def clbk(str_msg):

    final_message=str_msg.data+' '+str(str_msg.num)
    pub = rospy.Publisher('check', String, queue_size=10)
    rate = rospy.Rate(.016667)

    while not rospy.is_shutdown():

        pub.publish(final_message)
        
        rate.sleep()


    


if __name__=='__main__':
    rospy.init_node('yuru_flashbang_subscriber',anonymous=True)
    rospy.Subscriber('work_done',yoyo,clbk)


    rospy.spin()