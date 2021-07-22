#include <pub_department_number.hpp>

namespace pub_department_number
{
    PubDepartmentNumber::PubDepartmentNumber()
    {
        pub_number_str_ = nh.advertise<std_msgs::String>("/my_department_number", 100);

        srand((unsigned int)time(NULL));
    }

    PubDepartmentNumber::~PubDepartmentNumber()
    {

    }

    void PubDepartmentNumber::run()
    {
        my_number_str_.data = makeString();

        pub_number_str_.publish(my_number_str_);
    }

    std::string PubDepartmentNumber::makeString()
    {
        std::string ss;

        ss = "20192926";

        return ss;
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pub_department_number");

    pub_department_number::PubDepartmentNumber PDN;

    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        PDN.run();

        ros::spinOnce();
        loop_rate.sleep();
    }
}