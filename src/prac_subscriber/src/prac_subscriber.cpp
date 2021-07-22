#include "ros/ros.h"
#include <iostream>
#include <std_msgs/Int32.h>
#include <prac_publisher/prac_msg.h>

void callbackRandInt(const std_msgs::Int32::ConstPtr &msg)
{
    std::cout << "prac_subscriber node subscribes [ " << msg->data << " ] " << std::endl;
}

void callbackPracMsg(const prac_publisher::prac_msg::ConstPtr &msg)
{
    std::cout << "prac_subscriber node subscribes [ " << msg->float_data.data << " , " << msg->string_data.data << " ] " << std::endl;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "prac_subscriber");

    ros::NodeHandle nh;

    ros::Subscriber sub_rand_int = nh.subscribe("/my_first_topic", 100, callbackRandInt);
    ros::Subscriber sub_prac_msg = nh.subscribe("/my_firsg_msg", 100 ,callbackPracMsg);

    ros::spin();
    return 0;
}