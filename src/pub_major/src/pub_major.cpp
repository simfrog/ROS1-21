#include <pub_major.hpp>

namespace pub_major
{
    PubMajor::PubMajor()
    {
        pub_major_str_ = nh.advertise<std_msgs::String>("/my_major", 100);

        srand((unsigned int)time(NULL));
    }

    PubMajor::~PubMajor()
    {

    }

    void PubMajor::run()
    {
        my_major_str_.data = makeString();

        pub_major_str_.publish(my_major_str_);
    }

    std::string PubMajor::makeString()
    {
        std::string ss;

        ss = "Department of AI Convergence";

        return ss;
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pub_major");

    pub_major::PubMajor PM;

    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        PM.run();

        ros::spinOnce();
        loop_rate.sleep();
    }
}