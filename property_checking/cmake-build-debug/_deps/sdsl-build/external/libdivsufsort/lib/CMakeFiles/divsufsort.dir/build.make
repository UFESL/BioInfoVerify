# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yuhong/CLionProjects/rapid_check

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug

# Include any dependencies generated for this target.
include _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o: _deps/sdsl-src/external/libdivsufsort/lib/divsufsort.c
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o -MF CMakeFiles/divsufsort.dir/divsufsort.o.d -o CMakeFiles/divsufsort.dir/divsufsort.o -c /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/divsufsort.c

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/divsufsort.i"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/divsufsort.c > CMakeFiles/divsufsort.dir/divsufsort.i

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/divsufsort.s"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/divsufsort.c -o CMakeFiles/divsufsort.dir/divsufsort.s

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o: _deps/sdsl-src/external/libdivsufsort/lib/sssort.c
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o -MF CMakeFiles/divsufsort.dir/sssort.o.d -o CMakeFiles/divsufsort.dir/sssort.o -c /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/sssort.c

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/sssort.i"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/sssort.c > CMakeFiles/divsufsort.dir/sssort.i

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/sssort.s"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/sssort.c -o CMakeFiles/divsufsort.dir/sssort.s

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o: _deps/sdsl-src/external/libdivsufsort/lib/trsort.c
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o -MF CMakeFiles/divsufsort.dir/trsort.o.d -o CMakeFiles/divsufsort.dir/trsort.o -c /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/trsort.c

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/trsort.i"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/trsort.c > CMakeFiles/divsufsort.dir/trsort.i

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/trsort.s"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/trsort.c -o CMakeFiles/divsufsort.dir/trsort.s

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o: _deps/sdsl-src/external/libdivsufsort/lib/utils.c
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o -MF CMakeFiles/divsufsort.dir/utils.o.d -o CMakeFiles/divsufsort.dir/utils.o -c /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/utils.c

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/utils.i"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/utils.c > CMakeFiles/divsufsort.dir/utils.i

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/utils.s"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && /opt/homebrew/Cellar/llvm/17.0.6/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib/utils.c -o CMakeFiles/divsufsort.dir/utils.s

# Object files for target divsufsort
divsufsort_OBJECTS = \
"CMakeFiles/divsufsort.dir/divsufsort.o" \
"CMakeFiles/divsufsort.dir/sssort.o" \
"CMakeFiles/divsufsort.dir/trsort.o" \
"CMakeFiles/divsufsort.dir/utils.o"

# External object files for target divsufsort
divsufsort_EXTERNAL_OBJECTS =

_deps/sdsl-build/external/libdivsufsort/lib/libdivsufsort.a: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o
_deps/sdsl-build/external/libdivsufsort/lib/libdivsufsort.a: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o
_deps/sdsl-build/external/libdivsufsort/lib/libdivsufsort.a: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o
_deps/sdsl-build/external/libdivsufsort/lib/libdivsufsort.a: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o
_deps/sdsl-build/external/libdivsufsort/lib/libdivsufsort.a: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/build.make
_deps/sdsl-build/external/libdivsufsort/lib/libdivsufsort.a: _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libdivsufsort.a"
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && $(CMAKE_COMMAND) -P CMakeFiles/divsufsort.dir/cmake_clean_target.cmake
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/divsufsort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/build: _deps/sdsl-build/external/libdivsufsort/lib/libdivsufsort.a
.PHONY : _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/build

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/clean:
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib && $(CMAKE_COMMAND) -P CMakeFiles/divsufsort.dir/cmake_clean.cmake
.PHONY : _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/clean

_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/depend:
	cd /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yuhong/CLionProjects/rapid_check /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src/external/libdivsufsort/lib /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib /Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/sdsl-build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/depend

