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
include build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/depend.make

# Include the progress variables for this target.
include build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/progress.make

# Include the compile flags for this target's objects.
include build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_time.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_time.c > CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_time.c -o CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_stats.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_stats.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_stats.c > CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/cpu_stats.c -o CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/getopt.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/getopt.c > CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/getopt.c -o CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/safe_mem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/safe_mem.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/safe_mem.c > CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/safe_mem.c -o CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/strsav.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/strsav.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/strsav.c > CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/strsav.c -o CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/texpand.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/texpand.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/texpand.c > CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/texpand.c -o CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/ptime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/ptime.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/ptime.c > CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/ptime.c -o CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/prtime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/prtime.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/prtime.c > CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/prtime.c -o CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pipefork.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pipefork.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pipefork.c > CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pipefork.c -o CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pathsearch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pathsearch.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pathsearch.c > CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/pathsearch.c -o CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/stub.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/stub.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/stub.c > CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/stub.c -o CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/tmpfile.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/tmpfile.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/tmpfile.c > CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/tmpfile.c -o CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o


build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/flags.make
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o: /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/datalimit.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o   -c /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/datalimit.c

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.i"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/datalimit.c > CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.i

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.s"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util/datalimit.c -o CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.s

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.requires:

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.provides: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.requires
	$(MAKE) -f build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.provides.build
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.provides

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.provides.build: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o


# Object files for target CUDD_UTIL_LIB
CUDD_UTIL_LIB_OBJECTS = \
"CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o" \
"CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o"

# External object files for target CUDD_UTIL_LIB
CUDD_UTIL_LIB_EXTERNAL_OBJECTS =

build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build.make
build-cudd/lib/libutil.a: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library ../lib/libutil.a"
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && $(CMAKE_COMMAND) -P CMakeFiles/CUDD_UTIL_LIB.dir/cmake_clean_target.cmake
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CUDD_UTIL_LIB.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build: build-cudd/lib/libutil.a

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/build

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_time.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/cpu_stats.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/getopt.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/safe_mem.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/strsav.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/texpand.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/ptime.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/prtime.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pipefork.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/pathsearch.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/stub.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/tmpfile.c.o.requires
build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires: build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/datalimit.c.o.requires

.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/requires

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/clean:
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util && $(CMAKE_COMMAND) -P CMakeFiles/CUDD_UTIL_LIB.dir/cmake_clean.cmake
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/clean

build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/depend:
	cd /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV /home/zhangjiaqi/Documents/NuSMV-2.6.0/cudd-2.4.1.1/util /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build-cudd/util/CMakeFiles/CUDD_UTIL_LIB.dir/depend

