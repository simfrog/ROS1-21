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

# Utility rule file for clean_test_results_fourth_robot_description.

# Include the progress variables for this target.
include fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/progress.make

fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description:
	cd /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_description && /usr/bin/python2 /opt/ros/melodic/share/catkin/cmake/test/remove_test_results.py /home/sumin/catkin_ws/build/test_results/fourth_robot_description

clean_test_results_fourth_robot_description: fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description
clean_test_results_fourth_robot_description: fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/build.make

.PHONY : clean_test_results_fourth_robot_description

# Rule to build all files generated by this target.
fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/build: clean_test_results_fourth_robot_description

.PHONY : fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/build

fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/clean:
	cd /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_description && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_fourth_robot_description.dir/cmake_clean.cmake
.PHONY : fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/clean

fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/depend:
	cd /home/sumin/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sumin/catkin_ws/src /home/sumin/catkin_ws/src/fourth_robot_pkg/fourth_robot_description /home/sumin/catkin_ws/build /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_description /home/sumin/catkin_ws/build/fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fourth_robot_pkg/fourth_robot_description/CMakeFiles/clean_test_results_fourth_robot_description.dir/depend

