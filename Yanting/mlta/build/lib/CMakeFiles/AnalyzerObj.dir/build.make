# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/AnalyzerObj.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/AnalyzerObj.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/AnalyzerObj.dir/flags.make

lib/CMakeFiles/AnalyzerObj.dir/Config.cc.o: lib/CMakeFiles/AnalyzerObj.dir/flags.make
lib/CMakeFiles/AnalyzerObj.dir/Config.cc.o: /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Config.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/AnalyzerObj.dir/Config.cc.o"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AnalyzerObj.dir/Config.cc.o -c /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Config.cc

lib/CMakeFiles/AnalyzerObj.dir/Config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AnalyzerObj.dir/Config.cc.i"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Config.cc > CMakeFiles/AnalyzerObj.dir/Config.cc.i

lib/CMakeFiles/AnalyzerObj.dir/Config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AnalyzerObj.dir/Config.cc.s"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Config.cc -o CMakeFiles/AnalyzerObj.dir/Config.cc.s

lib/CMakeFiles/AnalyzerObj.dir/Common.cc.o: lib/CMakeFiles/AnalyzerObj.dir/flags.make
lib/CMakeFiles/AnalyzerObj.dir/Common.cc.o: /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Common.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/AnalyzerObj.dir/Common.cc.o"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AnalyzerObj.dir/Common.cc.o -c /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Common.cc

lib/CMakeFiles/AnalyzerObj.dir/Common.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AnalyzerObj.dir/Common.cc.i"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Common.cc > CMakeFiles/AnalyzerObj.dir/Common.cc.i

lib/CMakeFiles/AnalyzerObj.dir/Common.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AnalyzerObj.dir/Common.cc.s"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Common.cc -o CMakeFiles/AnalyzerObj.dir/Common.cc.s

lib/CMakeFiles/AnalyzerObj.dir/Analyzer.cc.o: lib/CMakeFiles/AnalyzerObj.dir/flags.make
lib/CMakeFiles/AnalyzerObj.dir/Analyzer.cc.o: /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Analyzer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/CMakeFiles/AnalyzerObj.dir/Analyzer.cc.o"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AnalyzerObj.dir/Analyzer.cc.o -c /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Analyzer.cc

lib/CMakeFiles/AnalyzerObj.dir/Analyzer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AnalyzerObj.dir/Analyzer.cc.i"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Analyzer.cc > CMakeFiles/AnalyzerObj.dir/Analyzer.cc.i

lib/CMakeFiles/AnalyzerObj.dir/Analyzer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AnalyzerObj.dir/Analyzer.cc.s"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/Analyzer.cc -o CMakeFiles/AnalyzerObj.dir/Analyzer.cc.s

lib/CMakeFiles/AnalyzerObj.dir/CallGraph.cc.o: lib/CMakeFiles/AnalyzerObj.dir/flags.make
lib/CMakeFiles/AnalyzerObj.dir/CallGraph.cc.o: /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/CallGraph.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/CMakeFiles/AnalyzerObj.dir/CallGraph.cc.o"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AnalyzerObj.dir/CallGraph.cc.o -c /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/CallGraph.cc

lib/CMakeFiles/AnalyzerObj.dir/CallGraph.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AnalyzerObj.dir/CallGraph.cc.i"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/CallGraph.cc > CMakeFiles/AnalyzerObj.dir/CallGraph.cc.i

lib/CMakeFiles/AnalyzerObj.dir/CallGraph.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AnalyzerObj.dir/CallGraph.cc.s"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/CallGraph.cc -o CMakeFiles/AnalyzerObj.dir/CallGraph.cc.s

lib/CMakeFiles/AnalyzerObj.dir/MLTA.cc.o: lib/CMakeFiles/AnalyzerObj.dir/flags.make
lib/CMakeFiles/AnalyzerObj.dir/MLTA.cc.o: /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/MLTA.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/CMakeFiles/AnalyzerObj.dir/MLTA.cc.o"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AnalyzerObj.dir/MLTA.cc.o -c /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/MLTA.cc

lib/CMakeFiles/AnalyzerObj.dir/MLTA.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AnalyzerObj.dir/MLTA.cc.i"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/MLTA.cc > CMakeFiles/AnalyzerObj.dir/MLTA.cc.i

lib/CMakeFiles/AnalyzerObj.dir/MLTA.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AnalyzerObj.dir/MLTA.cc.s"
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && /home/yantingchi/Desktop/clang/clang14.0.0/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib/MLTA.cc -o CMakeFiles/AnalyzerObj.dir/MLTA.cc.s

AnalyzerObj: lib/CMakeFiles/AnalyzerObj.dir/Config.cc.o
AnalyzerObj: lib/CMakeFiles/AnalyzerObj.dir/Common.cc.o
AnalyzerObj: lib/CMakeFiles/AnalyzerObj.dir/Analyzer.cc.o
AnalyzerObj: lib/CMakeFiles/AnalyzerObj.dir/CallGraph.cc.o
AnalyzerObj: lib/CMakeFiles/AnalyzerObj.dir/MLTA.cc.o
AnalyzerObj: lib/CMakeFiles/AnalyzerObj.dir/build.make

.PHONY : AnalyzerObj

# Rule to build all files generated by this target.
lib/CMakeFiles/AnalyzerObj.dir/build: AnalyzerObj

.PHONY : lib/CMakeFiles/AnalyzerObj.dir/build

lib/CMakeFiles/AnalyzerObj.dir/clean:
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/AnalyzerObj.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/AnalyzerObj.dir/clean

lib/CMakeFiles/AnalyzerObj.dir/depend:
	cd /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/src/lib /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib /home/yantingchi/Desktop/Lab/indirectCall/OSS-Fuzz/mlta/build/lib/CMakeFiles/AnalyzerObj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/AnalyzerObj.dir/depend

