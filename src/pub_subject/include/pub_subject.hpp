#include "ros/ros.h"
#include <iostream>
#include <std_msgs/String.h>
#include <cstdlib>
#include <ctime>

namespace pub_subject
{
    class PubSubject
    {
        public:
            PubSubject();
            ~PubSubject();

            void run();
            std::string makeString();

        private:
            ros::NodeHandle nh;

            ros::Publisher pub_subject_str_;

            std_msgs::String my_subject_str_;
    };
}