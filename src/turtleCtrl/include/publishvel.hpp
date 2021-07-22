#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <iostream>
#include <cstdlib>
#include <ctime>

// namespace는 언더바 포함해서 다 소문자로
namespace publishvel
{
    // class는 띄어쓰기 없이
    class PublishVel
    {
        // public에는 생성자와 멤버함수
        public:
            PublishVel();
            ~PublishVel();

            void run();

        // private에는 노드핸들과 퍼블리셔/서브스크라이버, 데이터, 자료구조 등
        private:

            // parameter using private_nh
            int turtleVelocity;

            // parameter using nh
            int turtleVelocity_;
    };
}