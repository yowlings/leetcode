# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/roc/code/leetcode

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/roc/code/leetcode/build

# Include any dependencies generated for this target.
include CMakeFiles/subString.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/subString.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/subString.dir/flags.make

CMakeFiles/subString.dir/subString.cpp.o: CMakeFiles/subString.dir/flags.make
CMakeFiles/subString.dir/subString.cpp.o: ../subString.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roc/code/leetcode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/subString.dir/subString.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/subString.dir/subString.cpp.o -c /Users/roc/code/leetcode/subString.cpp

CMakeFiles/subString.dir/subString.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subString.dir/subString.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roc/code/leetcode/subString.cpp > CMakeFiles/subString.dir/subString.cpp.i

CMakeFiles/subString.dir/subString.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subString.dir/subString.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roc/code/leetcode/subString.cpp -o CMakeFiles/subString.dir/subString.cpp.s

# Object files for target subString
subString_OBJECTS = \
"CMakeFiles/subString.dir/subString.cpp.o"

# External object files for target subString
subString_EXTERNAL_OBJECTS =

subString: CMakeFiles/subString.dir/subString.cpp.o
subString: CMakeFiles/subString.dir/build.make
subString: CMakeFiles/subString.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/roc/code/leetcode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable subString"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subString.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/subString.dir/build: subString

.PHONY : CMakeFiles/subString.dir/build

CMakeFiles/subString.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/subString.dir/cmake_clean.cmake
.PHONY : CMakeFiles/subString.dir/clean

CMakeFiles/subString.dir/depend:
	cd /Users/roc/code/leetcode/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/roc/code/leetcode /Users/roc/code/leetcode /Users/roc/code/leetcode/build /Users/roc/code/leetcode/build /Users/roc/code/leetcode/build/CMakeFiles/subString.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/subString.dir/depend

