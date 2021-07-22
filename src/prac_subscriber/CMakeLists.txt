cmake_minimum_required(VERSION 3.0.2)
project(prac_subscriber)

add_compile_options(-O -Wall -std=c++14 -fpermissive)

find_package(catkin REQUIRED)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  roscpp
  prac_publisher
)

catkin_package(
  CATKIN_DEPENDS
  roscpp
  prac_publisher
)

###########
## Build ##
###########

include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

add_executable(prac_subscriber
    src/prac_subscriber.cpp
)
add_dependencies(prac_subscriber ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(prac_subscriber
    ${catkin_LIBRARIES}
)