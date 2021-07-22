#include "ros/ros.h"
#include <iostream>
#include <std_msgs/Int32.h>
#include <cstdlib>
#include <ctime>
#include <my_publisher_class/class_msg.h>

// namespace는 언더바 포함해서 다 소문자로
namespace my_publisher_class
{
    // class는 띄어쓰기 없이
    class MyPublisherClass
    {
        // public에는 생성자와 멤버함수
        public:
            MyPublisherClass();
            ~MyPublisherClass();

            void run();
            int makeRandInt();
            float makeRandFloat();
            std::string makeString();

        // private에는 노드핸들과 퍼블리셔/서브스크라이버, 데이터, 자료구조 등
        private:
            // 용도에 따라서 사용방법이 다름
            ros::NodeHandle nh;
            ros::NodeHandle private_nh;

            // 멤버변수의 끝에는 언더바를 붙여줌
            ros::Publisher pub_rand_int_;
            ros::Publisher pub_class_msg_;

            std_msgs::Int32 my_data_int_;
            my_publisher_class::class_msg class_msg_;

            // parameter using private_nh
            int param_int_;
            float param_float_;
            std::string param_string_;

            // parameter using nh
            int param_int_nh_;
            float param_float_nh_;
            std::string param_string_nh_;
    };
}

/*
<arg name="param_int_arg" default="5"/>
<arg name="param_float_arg" default="2.7"/>
<arg name="param_string_arg" default="Sensor motion robot engineering is not difficult for me!"/>

<node...>

<param name="param_int" value="$(arg param_int_arg)"/>
<param name="param_float" value="$(arg param_float_arg)"/>
<param anme="param_string" value="$(arg param_string_arg)"/>
*/