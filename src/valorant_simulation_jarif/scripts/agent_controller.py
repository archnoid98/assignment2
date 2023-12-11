#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from valorant_simulation_jarif.msg import yoyo

if __name__ == '__main__':
    rospy.init_node('agent_controller_publisher', anonymous=True)

    pub = rospy.Publisher('riot_hq', yoyo, queue_size=10)
    rate = rospy.Rate(0.2)

    while not rospy.is_shutdown():
        m=yoyo()
        m.data='Hello Jarif'
        m.num =len(m.data)

        pub.publish(m)
        
        rate.sleep()
       