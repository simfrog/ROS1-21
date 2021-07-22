#include "ros/ros.h"
#include <iostream>
#include <std_msgs/Int32.h>
#include <prac_publisher/prac_msg.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "prac_publisher");

    ros::NodeHandle nh;

    ros::Publisher pub_rand_int = nh.advertise<std_msgs::Int32>("/my_first_topic", 100);
    ros::Publisher pub_prac_msg = nh.advertise<prac_publisher::prac_msg>("/my_first_msg", 100);

    ros::Rate loop_rate(10);

    srand((unsigned int)time(NULL));

    while(ros::ok())
    {
        prac_publisher::prac_msg pm;
        pm.float_data.data = rand() % 100 / 7.0;

        std::stringstream ss;
        ss << "I like apple";
        pm.string_data.data = ss.str();

        std_msgs::Int32 my_data;
        my_data.data = rand() % 100;

        pub_rand_int.publish(my_data);
        pub_prac_msg.publish(pm);

        std::cout << "prac_publisher node publishes [ " << my_data.data << " ] and [ "
                    << pm.float_data.data << " , " << pm.string_data.data << " ] " << std::endl;
        
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}