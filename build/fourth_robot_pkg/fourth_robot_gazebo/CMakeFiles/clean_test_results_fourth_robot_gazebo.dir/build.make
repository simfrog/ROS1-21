# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sumin/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sumin/catkin_ws/build

# Utility rule file for clean_test_results_fourth_robot_gazebo.

# Include the progress variables for this target.
include fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/progress.make

fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo:
	cd /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_gazebo && /usr/bin/python2 /opt/ros/melodic/share/catkin/cmake/test/remove_test_results.py /home/sumin/catkin_ws/build/test_results/fourth_robot_gazebo

clean_test_results_fourth_robot_gazebo: fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo
clean_test_results_fourth_robot_gazebo: fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/build.make

.PHONY : clean_test_results_fourth_robot_gazebo

# Rule to build all files generated by this target.
fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/build: clean_test_results_fourth_robot_gazebo

.PHONY : fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/build

fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/clean:
	cd /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_gazebo && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/cmake_clean.cmake
.PHONY : fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/clean

fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/depend:
	cd /home/sumin/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sumin/catkin_ws/src /home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_gazebo /home/sumin/catkin_ws/build /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_gazebo /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fourth_robot_pkg/fourth_robot_gazebo/CMakeFiles/clean_test_results_fourth_robot_gazebo.dir/depend

