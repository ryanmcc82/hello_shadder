# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master

# Include any dependencies generated for this target.
include CMakeFiles/hello_shader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello_shader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello_shader.dir/flags.make

CMakeFiles/hello_shader.dir/src/hello_shader.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/hello_shader.o: src/hello_shader.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hello_shader.dir/src/hello_shader.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/hello_shader.o -c /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/hello_shader.cc

CMakeFiles/hello_shader.dir/src/hello_shader.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/hello_shader.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/hello_shader.cc > CMakeFiles/hello_shader.dir/src/hello_shader.i

CMakeFiles/hello_shader.dir/src/hello_shader.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/hello_shader.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/hello_shader.cc -o CMakeFiles/hello_shader.dir/src/hello_shader.s

CMakeFiles/hello_shader.dir/src/hello_shader.o.requires:
.PHONY : CMakeFiles/hello_shader.dir/src/hello_shader.o.requires

CMakeFiles/hello_shader.dir/src/hello_shader.o.provides: CMakeFiles/hello_shader.dir/src/hello_shader.o.requires
	$(MAKE) -f CMakeFiles/hello_shader.dir/build.make CMakeFiles/hello_shader.dir/src/hello_shader.o.provides.build
.PHONY : CMakeFiles/hello_shader.dir/src/hello_shader.o.provides

CMakeFiles/hello_shader.dir/src/hello_shader.o.provides.build: CMakeFiles/hello_shader.dir/src/hello_shader.o

CMakeFiles/hello_shader.dir/src/viewer.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/viewer.o: src/viewer.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hello_shader.dir/src/viewer.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/viewer.o -c /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/viewer.cc

CMakeFiles/hello_shader.dir/src/viewer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/viewer.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/viewer.cc > CMakeFiles/hello_shader.dir/src/viewer.i

CMakeFiles/hello_shader.dir/src/viewer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/viewer.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/viewer.cc -o CMakeFiles/hello_shader.dir/src/viewer.s

CMakeFiles/hello_shader.dir/src/viewer.o.requires:
.PHONY : CMakeFiles/hello_shader.dir/src/viewer.o.requires

CMakeFiles/hello_shader.dir/src/viewer.o.provides: CMakeFiles/hello_shader.dir/src/viewer.o.requires
	$(MAKE) -f CMakeFiles/hello_shader.dir/build.make CMakeFiles/hello_shader.dir/src/viewer.o.provides.build
.PHONY : CMakeFiles/hello_shader.dir/src/viewer.o.provides

CMakeFiles/hello_shader.dir/src/viewer.o.provides.build: CMakeFiles/hello_shader.dir/src/viewer.o

CMakeFiles/hello_shader.dir/src/interface.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/interface.o: src/interface.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hello_shader.dir/src/interface.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/interface.o -c /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/interface.cc

CMakeFiles/hello_shader.dir/src/interface.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/interface.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/interface.cc > CMakeFiles/hello_shader.dir/src/interface.i

CMakeFiles/hello_shader.dir/src/interface.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/interface.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/interface.cc -o CMakeFiles/hello_shader.dir/src/interface.s

CMakeFiles/hello_shader.dir/src/interface.o.requires:
.PHONY : CMakeFiles/hello_shader.dir/src/interface.o.requires

CMakeFiles/hello_shader.dir/src/interface.o.provides: CMakeFiles/hello_shader.dir/src/interface.o.requires
	$(MAKE) -f CMakeFiles/hello_shader.dir/build.make CMakeFiles/hello_shader.dir/src/interface.o.provides.build
.PHONY : CMakeFiles/hello_shader.dir/src/interface.o.provides

CMakeFiles/hello_shader.dir/src/interface.o.provides.build: CMakeFiles/hello_shader.dir/src/interface.o

CMakeFiles/hello_shader.dir/src/gl_support.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/gl_support.o: src/gl_support.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hello_shader.dir/src/gl_support.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/gl_support.o -c /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/gl_support.cc

CMakeFiles/hello_shader.dir/src/gl_support.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/gl_support.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/gl_support.cc > CMakeFiles/hello_shader.dir/src/gl_support.i

CMakeFiles/hello_shader.dir/src/gl_support.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/gl_support.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/src/gl_support.cc -o CMakeFiles/hello_shader.dir/src/gl_support.s

CMakeFiles/hello_shader.dir/src/gl_support.o.requires:
.PHONY : CMakeFiles/hello_shader.dir/src/gl_support.o.requires

CMakeFiles/hello_shader.dir/src/gl_support.o.provides: CMakeFiles/hello_shader.dir/src/gl_support.o.requires
	$(MAKE) -f CMakeFiles/hello_shader.dir/build.make CMakeFiles/hello_shader.dir/src/gl_support.o.provides.build
.PHONY : CMakeFiles/hello_shader.dir/src/gl_support.o.provides

CMakeFiles/hello_shader.dir/src/gl_support.o.provides.build: CMakeFiles/hello_shader.dir/src/gl_support.o

# Object files for target hello_shader
hello_shader_OBJECTS = \
"CMakeFiles/hello_shader.dir/src/hello_shader.o" \
"CMakeFiles/hello_shader.dir/src/viewer.o" \
"CMakeFiles/hello_shader.dir/src/interface.o" \
"CMakeFiles/hello_shader.dir/src/gl_support.o"

# External object files for target hello_shader
hello_shader_EXTERNAL_OBJECTS =

hello_shader: CMakeFiles/hello_shader.dir/src/hello_shader.o
hello_shader: CMakeFiles/hello_shader.dir/src/viewer.o
hello_shader: CMakeFiles/hello_shader.dir/src/interface.o
hello_shader: CMakeFiles/hello_shader.dir/src/gl_support.o
hello_shader: CMakeFiles/hello_shader.dir/build.make
hello_shader: /usr/lib/x86_64-linux-gnu/libGLU.so
hello_shader: /usr/lib/x86_64-linux-gnu/libGL.so
hello_shader: /usr/lib/x86_64-linux-gnu/libSM.so
hello_shader: /usr/lib/x86_64-linux-gnu/libICE.so
hello_shader: /usr/lib/x86_64-linux-gnu/libX11.so
hello_shader: /usr/lib/x86_64-linux-gnu/libXext.so
hello_shader: /usr/lib/x86_64-linux-gnu/libGLEW.so
hello_shader: CMakeFiles/hello_shader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable hello_shader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_shader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello_shader.dir/build: hello_shader
.PHONY : CMakeFiles/hello_shader.dir/build

CMakeFiles/hello_shader.dir/requires: CMakeFiles/hello_shader.dir/src/hello_shader.o.requires
CMakeFiles/hello_shader.dir/requires: CMakeFiles/hello_shader.dir/src/viewer.o.requires
CMakeFiles/hello_shader.dir/requires: CMakeFiles/hello_shader.dir/src/interface.o.requires
CMakeFiles/hello_shader.dir/requires: CMakeFiles/hello_shader.dir/src/gl_support.o.requires
.PHONY : CMakeFiles/hello_shader.dir/requires

CMakeFiles/hello_shader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello_shader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello_shader.dir/clean

CMakeFiles/hello_shader.dir/depend:
	cd /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master /home/ryan/Code/graphics_cs470/hello_shadder/hello_shader-master/CMakeFiles/hello_shader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello_shader.dir/depend

