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
include code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/depend.make

# Include the progress variables for this target.
include code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/progress.make

# Include the compile flags for this target's objects.
include code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/flags.make

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o: code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/flags.make
code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o: ../code/nusmv/core/sexp/SexpInliner.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/core/sexp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/sexp/SexpInliner.c

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/core/sexp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/sexp/SexpInliner.c > CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.i

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/core/sexp && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/sexp/SexpInliner.c -o CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.s

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.requires:

.PHONY : code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.requires

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.provides: code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.requires
	$(MAKE) -f code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/build.make code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.provides.build
.PHONY : code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.provides

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.provides.build: code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o


code_nusmv_core_sexp: code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o
code_nusmv_core_sexp: code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/build.make

.PHONY : code_nusmv_core_sexp

# Rule to build all files generated by this target.
code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/build: code_nusmv_core_sexp

.PHONY : code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/build

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/requires: code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/SexpInliner.c.o.requires

.PHONY : code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/requires

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/clean:
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/core/sexp && $(CMAKE_COMMAND) -P CMakeFiles/code_nusmv_core_sexp.dir/cmake_clean.cmake
.PHONY : code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/clean

code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/depend:
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/sexp /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/core/sexp /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : code/nusmv/core/sexp/CMakeFiles/code_nusmv_core_sexp.dir/depend

