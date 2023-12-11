#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from valorant_simulation_jarif.msg import yoyo

m=yoyo()

def clbk(str_msg):
    
    m.data=str_msg.data
    m.num=str_msg.num



if __name__=='__main__':
    rospy.init_node('sage_the_healer_subscriber',anonymous=True)

    rospy.Subscriber('riot_hq',yoyo,clbk)

    pub = rospy.Publisher('work_done', yoyo, queue_size=10)
    rate = rospy.Rate(0.1)

    while not rospy.is_shutdown():
        

        pub.publish(m)
        
        rate.sleep()

    rospy.spin()