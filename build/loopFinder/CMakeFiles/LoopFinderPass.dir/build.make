# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.9.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.9.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build"

# Include any dependencies generated for this target.
include loopFinder/CMakeFiles/LoopFinderPass.dir/depend.make

# Include the progress variables for this target.
include loopFinder/CMakeFiles/LoopFinderPass.dir/progress.make

# Include the compile flags for this target's objects.
include loopFinder/CMakeFiles/LoopFinderPass.dir/flags.make

loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o: loopFinder/CMakeFiles/LoopFinderPass.dir/flags.make
loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o: ../loopFinder/loopFinder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o"
	cd "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/loopFinder" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o -c "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/loopFinder/loopFinder.cpp"

loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.i"
	cd "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/loopFinder" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/loopFinder/loopFinder.cpp" > CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.i

loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.s"
	cd "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/loopFinder" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/loopFinder/loopFinder.cpp" -o CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.s

loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.requires:

.PHONY : loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.requires

loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.provides: loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.requires
	$(MAKE) -f loopFinder/CMakeFiles/LoopFinderPass.dir/build.make loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.provides.build
.PHONY : loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.provides

loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.provides.build: loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o


# Object files for target LoopFinderPass
LoopFinderPass_OBJECTS = \
"CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o"

# External object files for target LoopFinderPass
LoopFinderPass_EXTERNAL_OBJECTS =

loopFinder/libLoopFinderPass.so: loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o
loopFinder/libLoopFinderPass.so: loopFinder/CMakeFiles/LoopFinderPass.dir/build.make
loopFinder/libLoopFinderPass.so: loopFinder/CMakeFiles/LoopFinderPass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libLoopFinderPass.so"
	cd "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/loopFinder" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LoopFinderPass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
loopFinder/CMakeFiles/LoopFinderPass.dir/build: loopFinder/libLoopFinderPass.so

.PHONY : loopFinder/CMakeFiles/LoopFinderPass.dir/build

loopFinder/CMakeFiles/LoopFinderPass.dir/requires: loopFinder/CMakeFiles/LoopFinderPass.dir/loopFinder.cpp.o.requires

.PHONY : loopFinder/CMakeFiles/LoopFinderPass.dir/requires

loopFinder/CMakeFiles/LoopFinderPass.dir/clean:
	cd "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/loopFinder" && $(CMAKE_COMMAND) -P CMakeFiles/LoopFinderPass.dir/cmake_clean.cmake
.PHONY : loopFinder/CMakeFiles/LoopFinderPass.dir/clean

loopFinder/CMakeFiles/LoopFinderPass.dir/depend:
	cd "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2" "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/loopFinder" "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build" "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/loopFinder" "/Users/Sumedh/Desktop/Sem 1/CD/112078010_A2/compilers-assign-2/build/loopFinder/CMakeFiles/LoopFinderPass.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : loopFinder/CMakeFiles/LoopFinderPass.dir/depend

