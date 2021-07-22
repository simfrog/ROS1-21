#include <pub_name.hpp>

namespace pub_name
{
    PubName::PubName()
    {
        pub_name_str_ = nh.advertise<std_msgs::String>("/my_name", 100);

        srand((unsigned int)time(NULL));
    }

    PubName::~PubName()
    {

    }

    void PubName::run()
    {
        my_name_str_.data = makeString();

        pub_name_str_ .publish(my_name_str_);
    }

    std::string PubName::makeString()
    {
        std::string ss;

        ss = "In Sumin";

        return ss;
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pub_name");

    pub_name::PubName PN;

    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        PN.run();

        ros::spinOnce();
        loop_rate.sleep();
    }
}