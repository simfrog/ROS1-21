# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_server_class: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_server_class_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv" NAME_WE)
add_custom_target(_my_server_class_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_server_class" "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(my_server_class
  "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_server_class
)

### Generating Module File
_generate_module_cpp(my_server_class
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_server_class
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_server_class_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_server_class_generate_messages my_server_class_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv" NAME_WE)
add_dependencies(my_server_class_generate_messages_cpp _my_server_class_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_server_class_gencpp)
add_dependencies(my_server_class_gencpp my_server_class_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_server_class_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(my_server_class
  "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_server_class
)

### Generating Module File
_generate_module_eus(my_server_class
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_server_class
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_server_class_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_server_class_generate_messages my_server_class_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv" NAME_WE)
add_dependencies(my_server_class_generate_messages_eus _my_server_class_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_server_class_geneus)
add_dependencies(my_server_class_geneus my_server_class_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_server_class_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(my_server_class
  "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_server_class
)

### Generating Module File
_generate_module_lisp(my_server_class
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_server_class
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_server_class_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_server_class_generate_messages my_server_class_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv" NAME_WE)
add_dependencies(my_server_class_generate_messages_lisp _my_server_class_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_server_class_genlisp)
add_dependencies(my_server_class_genlisp my_server_class_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_server_class_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(my_server_class
  "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_server_class
)

### Generating Module File
_generate_module_nodejs(my_server_class
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_server_class
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_server_class_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_server_class_generate_messages my_server_class_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv" NAME_WE)
add_dependencies(my_server_class_generate_messages_nodejs _my_server_class_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_server_class_gennodejs)
add_dependencies(my_server_class_gennodejs my_server_class_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_server_class_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(my_server_class
  "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_server_class
)

### Generating Module File
_generate_module_py(my_server_class
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_server_class
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_server_class_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_server_class_generate_messages my_server_class_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sumin/catkin_ws/src/my_server_class/srv/add_two_ints.srv" NAME_WE)
add_dependencies(my_server_class_generate_messages_py _my_server_class_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_server_class_genpy)
add_dependencies(my_server_class_genpy my_server_class_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_server_class_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_server_class)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_server_class
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_server_class_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_server_class)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_server_class
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_server_class_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_server_class)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_server_class
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_server_class_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_server_class)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_server_class
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_server_class_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_server_class)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_server_class\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_server_class
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_server_class_generate_messages_py std_msgs_generate_messages_py)
endif()
