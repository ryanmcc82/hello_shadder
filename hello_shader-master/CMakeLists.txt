project( hello_shader )

CMAKE_MINIMUM_REQUIRED(VERSION 2.4.5)
set(CMAKE_CXX_FLAGS "-Wall -std=c++11 -I/usr/local/include/eigen3 -lglfw3 -lX11 -lXrandr -lXinerama -lXi -lXxf86vm -lXcursor -lGL -lpthread")
                     # note that Eigen/Core complains if only -std=c++11 is used
                     # make VERBOSE=1
set(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS true)
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
                                         # set(PIERRE /Users/jj/Software/pierre)
#set(GLFW /Users/jj/Downloads/glfw-3.1.1)
#set(CMAKE_BUILD_TYPE Debug)
#message("CMAKE_BUILD_TYPE is ${CMAKE_BUILD_TYPE}")
#message("CMAKE_CXX_FLAGS_DEBUG is ${CMAKE_CXX_FLAGS_DEBUG}")
              # message("CMAKE_CXX_FLAGS_RELEASE is ${CMAKE_CXX_FLAGS_RELEASE}")
message("Generated with config types: ${CMAKE_CONFIGURATION_TYPES}")

if ( COMMAND cmake_policy )
  cmake_policy( SET CMP0003 NEW )
endif()

find_package(OpenGL)
find_package(Eigen3 REQUIRED)
find_package(GLEW REQUIRED)
FIND_PACKAGE( PkgConfig REQUIRED )
pkg_search_module( GLFW3 REQUIRED glfw3 )

#SET(CMAKE_CXX_LINK_FLAGS "-framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo")

if ( GLEW_FOUND )

  include_directories (BEFORE include/
   		       ${GLEW_INCLUDE_DIRS}
   		       ${GLFW_INCLUDE_DIRS}
   		       ${GLFW3_INCLUDE_DIR}
		       ${GLFW}/include
               #/usr/local/include/GLFW
                                                             # ${PIERRE}/include
                       #/Users/jj/Downloads/eigen-eigen-bdd17ee3b1b3
                       )

  add_executable (hello_shader
  		  src/hello_shader.cc
		  src/viewer.cc
		  src/interface.cc
		  src/gl_support.cc)

  target_link_libraries(hello_shader
	                ${OPENGL_LIBRARIES}
	                ${GLEW_LIBRARIES}
	                ${GLFW_STATIC_LIBRARIES}
	                #glfw3
	                #${GLFW_LIBRARIES}
	                )

else()

 message(STATUS "This program requires the GLEW library and won't be compiled.")

endif()

