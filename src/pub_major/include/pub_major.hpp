#include "ros/ros.h"
#include <iostream>
#include <std_msgs/String.h>
#include <cstdlib>
#include <ctime>

namespace pub_major
{
    class PubMajor
    {
        public:
            PubMajor();
            ~PubMajor();

            void run();
            std::string makeString();

        private:
            ros::NodeHandle nh;

            ros::Publisher pub_major_str_;

            std_msgs::String my_major_str_;
    };
}