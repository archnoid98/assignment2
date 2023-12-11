# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "valorant_simulation_jarif: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ivalorant_simulation_jarif:/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(valorant_simulation_jarif_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg" NAME_WE)
add_custom_target(_valorant_simulation_jarif_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "valorant_simulation_jarif" "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(valorant_simulation_jarif
  "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/valorant_simulation_jarif
)

### Generating Services

### Generating Module File
_generate_module_cpp(valorant_simulation_jarif
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/valorant_simulation_jarif
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(valorant_simulation_jarif_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(valorant_simulation_jarif_generate_messages valorant_simulation_jarif_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg" NAME_WE)
add_dependencies(valorant_simulation_jarif_generate_messages_cpp _valorant_simulation_jarif_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(valorant_simulation_jarif_gencpp)
add_dependencies(valorant_simulation_jarif_gencpp valorant_simulation_jarif_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS valorant_simulation_jarif_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(valorant_simulation_jarif
  "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/valorant_simulation_jarif
)

### Generating Services

### Generating Module File
_generate_module_eus(valorant_simulation_jarif
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/valorant_simulation_jarif
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(valorant_simulation_jarif_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(valorant_simulation_jarif_generate_messages valorant_simulation_jarif_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg" NAME_WE)
add_dependencies(valorant_simulation_jarif_generate_messages_eus _valorant_simulation_jarif_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(valorant_simulation_jarif_geneus)
add_dependencies(valorant_simulation_jarif_geneus valorant_simulation_jarif_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS valorant_simulation_jarif_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(valorant_simulation_jarif
  "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/valorant_simulation_jarif
)

### Generating Services

### Generating Module File
_generate_module_lisp(valorant_simulation_jarif
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/valorant_simulation_jarif
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(valorant_simulation_jarif_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(valorant_simulation_jarif_generate_messages valorant_simulation_jarif_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg" NAME_WE)
add_dependencies(valorant_simulation_jarif_generate_messages_lisp _valorant_simulation_jarif_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(valorant_simulation_jarif_genlisp)
add_dependencies(valorant_simulation_jarif_genlisp valorant_simulation_jarif_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS valorant_simulation_jarif_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(valorant_simulation_jarif
  "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/valorant_simulation_jarif
)

### Generating Services

### Generating Module File
_generate_module_nodejs(valorant_simulation_jarif
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/valorant_simulation_jarif
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(valorant_simulation_jarif_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(valorant_simulation_jarif_generate_messages valorant_simulation_jarif_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg" NAME_WE)
add_dependencies(valorant_simulation_jarif_generate_messages_nodejs _valorant_simulation_jarif_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(valorant_simulation_jarif_gennodejs)
add_dependencies(valorant_simulation_jarif_gennodejs valorant_simulation_jarif_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS valorant_simulation_jarif_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(valorant_simulation_jarif
  "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/valorant_simulation_jarif
)

### Generating Services

### Generating Module File
_generate_module_py(valorant_simulation_jarif
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/valorant_simulation_jarif
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(valorant_simulation_jarif_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(valorant_simulation_jarif_generate_messages valorant_simulation_jarif_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/archnoid/example_2_ws/src/valorant_simulation_jarif/msg/yoyo.msg" NAME_WE)
add_dependencies(valorant_simulation_jarif_generate_messages_py _valorant_simulation_jarif_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(valorant_simulation_jarif_genpy)
add_dependencies(valorant_simulation_jarif_genpy valorant_simulation_jarif_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS valorant_simulation_jarif_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/valorant_simulation_jarif)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/valorant_simulation_jarif
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(valorant_simulation_jarif_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/valorant_simulation_jarif)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/valorant_simulation_jarif
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(valorant_simulation_jarif_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/valorant_simulation_jarif)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/valorant_simulation_jarif
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(valorant_simulation_jarif_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/valorant_simulation_jarif)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/valorant_simulation_jarif
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(valorant_simulation_jarif_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/valorant_simulation_jarif)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/valorant_simulation_jarif\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/valorant_simulation_jarif
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(valorant_simulation_jarif_generate_messages_py std_msgs_generate_messages_py)
endif()
