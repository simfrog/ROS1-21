#include "ros/ros.h"
#include <iostream>
#include <std_msgs/String.h>

namespace string_merger
{
    class StringMerger
    {
        public:
            StringMerger();
            ~StringMerger();

            void callbackMajor(const std_msgs::String::ConstPtr &ptr);
            void callbackSubject(const std_msgs::String::ConstPtr &ptr);
            void callbackDepartmentNumber(const std_msgs::String::ConstPtr &ptr);
            void callbackName(const std_msgs::String::ConstPtr &ptr);
            
            void run();

        private:
            ros::NodeHandle nh;

            ros::Publisher pub_str_merger_;
            ros::Subscriber sub_my_major_;
            ros::Subscriber sub_my_subject_;
            ros::Subscriber sub_my_department_number_;
            ros::Subscriber sub_my_name_;

            std::string str_major_;
            std::string str_subject_;
            std::string str_department_number_;
            std::string str_name_;

            std_msgs::String str_merger_;

            bool major_ok_;
            bool subject_ok_;
            bool department_number_ok_;
            bool name_ok_;
    };
}