# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /cygdrive/c/Users/noame/AppData/Local/JetBrains/CLion2020.3/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/noame/AppData/Local/JetBrains/CLion2020.3/cygwin_cmake/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/noame/cpp/labs/lab_0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/noame/cpp/labs/lab_0/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab_0.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab_0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab_0.dir/flags.make

CMakeFiles/lab_0.dir/main.c.o: CMakeFiles/lab_0.dir/flags.make
CMakeFiles/lab_0.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/noame/cpp/labs/lab_0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab_0.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab_0.dir/main.c.o   -c /home/noame/cpp/labs/lab_0/main.c

CMakeFiles/lab_0.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab_0.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/noame/cpp/labs/lab_0/main.c > CMakeFiles/lab_0.dir/main.c.i

CMakeFiles/lab_0.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab_0.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/noame/cpp/labs/lab_0/main.c -o CMakeFiles/lab_0.dir/main.c.s

# Object files for target lab_0
lab_0_OBJECTS = \
"CMakeFiles/lab_0.dir/main.c.o"

# External object files for target lab_0
lab_0_EXTERNAL_OBJECTS =

lab_0.exe: CMakeFiles/lab_0.dir/main.c.o
lab_0.exe: CMakeFiles/lab_0.dir/build.make
lab_0.exe: CMakeFiles/lab_0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/noame/cpp/labs/lab_0/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lab_0.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab_0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab_0.dir/build: lab_0.exe

.PHONY : CMakeFiles/lab_0.dir/build

CMakeFiles/lab_0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab_0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab_0.dir/clean

CMakeFiles/lab_0.dir/depend:
	cd /home/noame/cpp/labs/lab_0/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/noame/cpp/labs/lab_0 /home/noame/cpp/labs/lab_0 /home/noame/cpp/labs/lab_0/cmake-build-debug /home/noame/cpp/labs/lab_0/cmake-build-debug /home/noame/cpp/labs/lab_0/cmake-build-debug/CMakeFiles/lab_0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab_0.dir/depend

