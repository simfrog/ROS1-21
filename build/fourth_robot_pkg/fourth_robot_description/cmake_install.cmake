# Install script for directory: /home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sumin/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_description/catkin_generated/installspace/fourth_robot_description.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/cmake" TYPE FILE FILES
    "/home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_description/catkin_generated/installspace/fourth_robot_descriptionConfig.cmake"
    "/home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_description/catkin_generated/installspace/fourth_robot_descriptionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description" TYPE FILE FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/launch" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/launch/config" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/launch/config/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/DAE/base" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/DAE/base/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/DAE/wheel" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/DAE/wheel/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/DAE/sensors/front_lrf" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/DAE/sensors/front_lrf/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/DAE/sensors/gim30" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/DAE/sensors/gim30/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/DAE/sensors/gps" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/DAE/sensors/gps/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/DAE/sensors/rear_lrf" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/DAE/sensors/rear_lrf/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/STL/base" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/STL/base/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/STL/sensors/front_lrf" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/STL/sensors/front_lrf/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/STL/sensors/gim30" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/STL/sensors/gim30/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/STL/sensors/gps" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/STL/sensors/gps/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/meshes/STL/sensors/rear_lrf" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/meshes/STL/sensors/rear_lrf/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/robots" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/robots/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/urdf" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/urdf/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/urdf/base" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/urdf/base/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/urdf/wheel" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/urdf/wheel/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/urdf/sensors/gim30" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/urdf/sensors/gim30/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/urdf/sensors/gps" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/urdf/sensors/gps/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fourth_robot_description/urdf/sensors/lrf" TYPE DIRECTORY FILES "/home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description/urdf/sensors/lrf/")
endif()

