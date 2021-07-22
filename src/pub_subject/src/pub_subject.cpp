#include <pub_subject.hpp>

namespace pub_subject
{
    PubSubject::PubSubject()
    {
        pub_subject_str_ = nh.advertise<std_msgs::String>("/my_subject", 100);

        srand((unsigned int)time(NULL));
    }

    PubSubject::~PubSubject()
    {

    }

    void PubSubject::run()
    {
        my_subject_str_.data = makeString();

        pub_subject_str_.publish(my_subject_str_);
    }

    std::string PubSubject::makeString()
    {
        std::string ss;

        ss = "Sensor_motion_robot_enginnering";

        return ss;
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pub_subject");

    pub_subject::PubSubject PS;

    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        PS.run();

        ros::spinOnce();
        loop_rate.sleep();
    }
}