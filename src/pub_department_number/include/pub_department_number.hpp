#include "ros/ros.h"
#include <iostream>
#include <std_msgs/String.h>
#include <cstdlib>
#include <ctime>

namespace pub_department_number
{
    class PubDepartmentNumber
    {
        public:
            PubDepartmentNumber();
            ~PubDepartmentNumber();

            void run();
            std::string makeString();

        private:
            ros::NodeHandle nh;

            ros::Publisher pub_number_str_;

            std_msgs::String my_number_str_;
    };
}