cmake_minimum_required(VERSION 3.0.2)
project(publishvel)

add_compile_options(-O -Wall -std=c++14 -fpermissive)

find_package(catkin REQUIRED)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  geometry_msgs
  turtlesim
)

catkin_package(
  CATKIN_DEPENDS
  roscpp
)

###########
## Build ##
###########

include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

add_executable(publishvel
    src/publishvel.cpp
)
add_dependencies(publishvel ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(publishvel
    ${catkin_LIBRARIES}
)