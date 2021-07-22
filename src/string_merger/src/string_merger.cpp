#include <string_merger.hpp>

namespace string_merger
{
    StringMerger::StringMerger()
    {
        pub_str_merger_ = nh.advertise<std_msgs::String>("/my_information", 100);
        
        sub_my_major_ = nh.subscribe("/my_major", 100, &StringMerger::callbackMajor, this);
        sub_my_subject_ = nh.subscribe("/my_subject", 100, &StringMerger::callbackSubject, this);
        sub_my_department_number_ = nh.subscribe("/my_department_number", 100, &StringMerger::callbackDepartmentNumber, this);
        sub_my_name_ = nh.subscribe("/my_name", 100, &StringMerger::callbackName, this);

        str_major_ = "";
        str_subject_ = "";
        str_department_number_ = "";
        str_name_ = "";

        major_ok_ = false;
        subject_ok_ = false;
        department_number_ok_ = false;
        name_ok_ = false;
    }

    StringMerger::~StringMerger()
    {   

    }

    void StringMerger::callbackDepartmentNumber(const std_msgs::String::ConstPtr &ptr)
    {
        str_department_number_ = ptr->data;
        department_number_ok_ = true;
    }

    void StringMerger::callbackMajor(const std_msgs::String::ConstPtr &ptr)
    {
        str_major_ = ptr->data;
        major_ok_ = true;
    }

    void StringMerger::callbackName(const std_msgs::String::ConstPtr &ptr)
    {
        str_name_ = ptr->data;
        name_ok_ = true;
    }

    void StringMerger::callbackSubject(const std_msgs::String::ConstPtr &ptr)
    {
        str_subject_ = ptr->data;
        subject_ok_ = true;
    }

    void StringMerger::run()
    {
        if( !(department_number_ok_ && major_ok_ && name_ok_ && subject_ok_) ) return;

        str_merger_.data = str_major_+ " / " + str_subject_ + " / " + str_department_number_ + " / " + str_name_;

        pub_str_merger_ .publish(str_merger_);

        std::cout << "data: \"" << str_major_ << " / " << str_subject_ << " / " << str_department_number_ << " / " << str_name_ << std::endl;
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "string_merger");

    string_merger::StringMerger SM;

    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        SM.run();

        ros::spinOnce();
        loop_rate.sleep();
    }
}