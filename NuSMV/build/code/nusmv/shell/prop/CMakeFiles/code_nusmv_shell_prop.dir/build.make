# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build

# Include any dependencies generated for this target.
include code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/depend.make

# Include the progress variables for this target.
include code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/progress.make

# Include the compile flags for this target's objects.
include code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/flags.make

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o: code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/flags.make
code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o: ../code/nusmv/shell/prop/propCmd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/shell/prop && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/shell/prop/propCmd.c

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/shell/prop && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/shell/prop/propCmd.c > CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.i

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/shell/prop && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/shell/prop/propCmd.c -o CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.s

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.requires:

.PHONY : code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.requires

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.provides: code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.requires
	$(MAKE) -f code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/build.make code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.provides.build
.PHONY : code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.provides

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.provides.build: code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o


code_nusmv_shell_prop: code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o
code_nusmv_shell_prop: code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/build.make

.PHONY : code_nusmv_shell_prop

# Rule to build all files generated by this target.
code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/build: code_nusmv_shell_prop

.PHONY : code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/build

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/requires: code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/propCmd.c.o.requires

.PHONY : code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/requires

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/clean:
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/shell/prop && $(CMAKE_COMMAND) -P CMakeFiles/code_nusmv_shell_prop.dir/cmake_clean.cmake
.PHONY : code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/clean

code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/depend:
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/shell/prop /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/shell/prop /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : code/nusmv/shell/prop/CMakeFiles/code_nusmv_shell_prop.dir/depend

