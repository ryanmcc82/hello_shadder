# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/amalee/Documents/CS470/hello_shader

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/amalee/Documents/CS470/hello_shader

# Include any dependencies generated for this target.
include CMakeFiles/hello_shader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello_shader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello_shader.dir/flags.make

CMakeFiles/hello_shader.dir/src/hello_shader.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/hello_shader.o: src/hello_shader.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amalee/Documents/CS470/hello_shader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hello_shader.dir/src/hello_shader.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/hello_shader.o -c /Users/amalee/Documents/CS470/hello_shader/src/hello_shader.cc

CMakeFiles/hello_shader.dir/src/hello_shader.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/hello_shader.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/amalee/Documents/CS470/hello_shader/src/hello_shader.cc > CMakeFiles/hello_shader.dir/src/hello_shader.i

CMakeFiles/hello_shader.dir/src/hello_shader.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/hello_shader.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/amalee/Documents/CS470/hello_shader/src/hello_shader.cc -o CMakeFiles/hello_shader.dir/src/hello_shader.s

CMakeFiles/hello_shader.dir/src/hello_shader.o.requires:

.PHONY : CMakeFiles/hello_shader.dir/src/hello_shader.o.requires

CMakeFiles/hello_shader.dir/src/hello_shader.o.provides: CMakeFiles/hello_shader.dir/src/hello_shader.o.requires
	$(MAKE) -f CMakeFiles/hello_shader.dir/build.make CMakeFiles/hello_shader.dir/src/hello_shader.o.provides.build
.PHONY : CMakeFiles/hello_shader.dir/src/hello_shader.o.provides

CMakeFiles/hello_shader.dir/src/hello_shader.o.provides.build: CMakeFiles/hello_shader.dir/src/hello_shader.o


CMakeFiles/hello_shader.dir/src/viewer.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/viewer.o: src/viewer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amalee/Documents/CS470/hello_shader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hello_shader.dir/src/viewer.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/viewer.o -c /Users/amalee/Documents/CS470/hello_shader/src/viewer.cc

CMakeFiles/hello_shader.dir/src/viewer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/viewer.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/amalee/Documents/CS470/hello_shader/src/viewer.cc > CMakeFiles/hello_shader.dir/src/viewer.i

CMakeFiles/hello_shader.dir/src/viewer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/viewer.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/amalee/Documents/CS470/hello_shader/src/viewer.cc -o CMakeFiles/hello_shader.dir/src/viewer.s

CMakeFiles/hello_shader.dir/src/viewer.o.requires:

.PHONY : CMakeFiles/hello_shader.dir/src/viewer.o.requires

CMakeFiles/hello_shader.dir/src/viewer.o.provides: CMakeFiles/hello_shader.dir/src/viewer.o.requires
	$(MAKE) -f CMakeFiles/hello_shader.dir/build.make CMakeFiles/hello_shader.dir/src/viewer.o.provides.build
.PHONY : CMakeFiles/hello_shader.dir/src/viewer.o.provides

CMakeFiles/hello_shader.dir/src/viewer.o.provides.build: CMakeFiles/hello_shader.dir/src/viewer.o


CMakeFiles/hello_shader.dir/src/interface.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/interface.o: src/interface.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amalee/Documents/CS470/hello_shader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/hello_shader.dir/src/interface.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/interface.o -c /Users/amalee/Documents/CS470/hello_shader/src/interface.cc

CMakeFiles/hello_shader.dir/src/interface.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/interface.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/amalee/Documents/CS470/hello_shader/src/interface.cc > CMakeFiles/hello_shader.dir/src/interface.i

CMakeFiles/hello_shader.dir/src/interface.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/interface.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/amalee/Documents/CS470/hello_shader/src/interface.cc -o CMakeFiles/hello_shader.dir/src/interface.s

CMakeFiles/hello_shader.dir/src/interface.o.requires:

.PHONY : CMakeFiles/hello_shader.dir/src/interface.o.requires

CMakeFiles/hello_shader.dir/src/interface.o.provides: CMakeFiles/hello_shader.dir/src/interface.o.requires
	$(MAKE) -f CMakeFiles/hello_shader.dir/build.make CMakeFiles/hello_shader.dir/src/interface.o.provides.build
.PHONY : CMakeFiles/hello_shader.dir/src/interface.o.provides

CMakeFiles/hello_shader.dir/src/interface.o.provides.build: CMakeFiles/hello_shader.dir/src/interface.o


CMakeFiles/hello_shader.dir/src/gl_support.o: CMakeFiles/hello_shader.dir/flags.make
CMakeFiles/hello_shader.dir/src/gl_support.o: src/gl_support.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amalee/Documents/CS470/hello_shader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/hello_shader.dir/src/gl_support.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello_shader.dir/src/gl_support.o -c /Users/amalee/Documents/CS470/hello_shader/src/gl_support.cc

CMakeFiles/hello_shader.dir/src/gl_support.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shader.dir/src/gl_support.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/amalee/Documents/CS470/hello_shader/src/gl_support.cc > CMakeFiles/hello_shader.dir/src/gl_support.i

CMakeFiles/hello_shader.dir/src/gl_support.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shader.dir/src/gl_support.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/amalee/Documents/CS470/hello_shader/src/gl_support.cc -o CMakeFiles/hello_shader.dir/src/gl_support.s

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
hello_shader: /usr/lib/libGLEW.dylib
hello_shader: CMakeFiles/hello_shader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amalee/Documents/CS470/hello_shader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable hello_shader"
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
	cd /Users/amalee/Documents/CS470/hello_shader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amalee/Documents/CS470/hello_shader /Users/amalee/Documents/CS470/hello_shader /Users/amalee/Documents/CS470/hello_shader /Users/amalee/Documents/CS470/hello_shader /Users/amalee/Documents/CS470/hello_shader/CMakeFiles/hello_shader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello_shader.dir/depend
