#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <iostream>
#include <cstdlib>
#include <ctime>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "publishvel");

    ros::NodeHandle nh;

    //int turtleVelocity;

    //if(!nh.getParam("/turtleVelocity", turtleVelocity)) continue;

    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);

    ros::Rate loop_rate(10);

    srand((unsigned int)time(NULL));

    while(ros::ok())
    {
        geometry_msgs::Twist msg;
        msg.linear.x = 2;
        msg.angular.z = 1.0;

        pub.publish(msg);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}