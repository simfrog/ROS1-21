#include "ros/ros.h"
#include <iostream>
#include <std_msgs/String.h>
#include <cstdlib>
#include <ctime>

namespace pub_name
{
    class PubName
    {
        public:
            PubName();
            ~PubName();

            void run();
            std::string makeString();

        private:
            ros::NodeHandle nh;

            ros::Publisher pub_name_str_;

            std_msgs::String my_name_str_;
    };
}