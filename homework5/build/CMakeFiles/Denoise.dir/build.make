# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build"

# Include any dependencies generated for this target.
include CMakeFiles/Denoise.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Denoise.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Denoise.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Denoise.dir/flags.make

CMakeFiles/Denoise.dir/src/denoiser.cpp.o: CMakeFiles/Denoise.dir/flags.make
CMakeFiles/Denoise.dir/src/denoiser.cpp.o: /Users/bytedance/Desktop/WorkSpace/games202\ hw/homework5/src/denoiser.cpp
CMakeFiles/Denoise.dir/src/denoiser.cpp.o: CMakeFiles/Denoise.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Denoise.dir/src/denoiser.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Denoise.dir/src/denoiser.cpp.o -MF CMakeFiles/Denoise.dir/src/denoiser.cpp.o.d -o CMakeFiles/Denoise.dir/src/denoiser.cpp.o -c "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/denoiser.cpp"

CMakeFiles/Denoise.dir/src/denoiser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Denoise.dir/src/denoiser.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/denoiser.cpp" > CMakeFiles/Denoise.dir/src/denoiser.cpp.i

CMakeFiles/Denoise.dir/src/denoiser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Denoise.dir/src/denoiser.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/denoiser.cpp" -o CMakeFiles/Denoise.dir/src/denoiser.cpp.s

CMakeFiles/Denoise.dir/src/main.cpp.o: CMakeFiles/Denoise.dir/flags.make
CMakeFiles/Denoise.dir/src/main.cpp.o: /Users/bytedance/Desktop/WorkSpace/games202\ hw/homework5/src/main.cpp
CMakeFiles/Denoise.dir/src/main.cpp.o: CMakeFiles/Denoise.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Denoise.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Denoise.dir/src/main.cpp.o -MF CMakeFiles/Denoise.dir/src/main.cpp.o.d -o CMakeFiles/Denoise.dir/src/main.cpp.o -c "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/main.cpp"

CMakeFiles/Denoise.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Denoise.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/main.cpp" > CMakeFiles/Denoise.dir/src/main.cpp.i

CMakeFiles/Denoise.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Denoise.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/main.cpp" -o CMakeFiles/Denoise.dir/src/main.cpp.s

CMakeFiles/Denoise.dir/src/util/image.cpp.o: CMakeFiles/Denoise.dir/flags.make
CMakeFiles/Denoise.dir/src/util/image.cpp.o: /Users/bytedance/Desktop/WorkSpace/games202\ hw/homework5/src/util/image.cpp
CMakeFiles/Denoise.dir/src/util/image.cpp.o: CMakeFiles/Denoise.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Denoise.dir/src/util/image.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Denoise.dir/src/util/image.cpp.o -MF CMakeFiles/Denoise.dir/src/util/image.cpp.o.d -o CMakeFiles/Denoise.dir/src/util/image.cpp.o -c "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/image.cpp"

CMakeFiles/Denoise.dir/src/util/image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Denoise.dir/src/util/image.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/image.cpp" > CMakeFiles/Denoise.dir/src/util/image.cpp.i

CMakeFiles/Denoise.dir/src/util/image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Denoise.dir/src/util/image.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/image.cpp" -o CMakeFiles/Denoise.dir/src/util/image.cpp.s

CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o: CMakeFiles/Denoise.dir/flags.make
CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o: /Users/bytedance/Desktop/WorkSpace/games202\ hw/homework5/src/util/imageutil.cpp
CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o: CMakeFiles/Denoise.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o -MF CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o.d -o CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o -c "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/imageutil.cpp"

CMakeFiles/Denoise.dir/src/util/imageutil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Denoise.dir/src/util/imageutil.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/imageutil.cpp" > CMakeFiles/Denoise.dir/src/util/imageutil.cpp.i

CMakeFiles/Denoise.dir/src/util/imageutil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Denoise.dir/src/util/imageutil.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/imageutil.cpp" -o CMakeFiles/Denoise.dir/src/util/imageutil.cpp.s

CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o: CMakeFiles/Denoise.dir/flags.make
CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o: /Users/bytedance/Desktop/WorkSpace/games202\ hw/homework5/src/util/mathutil.cpp
CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o: CMakeFiles/Denoise.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o -MF CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o.d -o CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o -c "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/mathutil.cpp"

CMakeFiles/Denoise.dir/src/util/mathutil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Denoise.dir/src/util/mathutil.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/mathutil.cpp" > CMakeFiles/Denoise.dir/src/util/mathutil.cpp.i

CMakeFiles/Denoise.dir/src/util/mathutil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Denoise.dir/src/util/mathutil.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/src/util/mathutil.cpp" -o CMakeFiles/Denoise.dir/src/util/mathutil.cpp.s

# Object files for target Denoise
Denoise_OBJECTS = \
"CMakeFiles/Denoise.dir/src/denoiser.cpp.o" \
"CMakeFiles/Denoise.dir/src/main.cpp.o" \
"CMakeFiles/Denoise.dir/src/util/image.cpp.o" \
"CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o" \
"CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o"

# External object files for target Denoise
Denoise_EXTERNAL_OBJECTS =

Denoise: CMakeFiles/Denoise.dir/src/denoiser.cpp.o
Denoise: CMakeFiles/Denoise.dir/src/main.cpp.o
Denoise: CMakeFiles/Denoise.dir/src/util/image.cpp.o
Denoise: CMakeFiles/Denoise.dir/src/util/imageutil.cpp.o
Denoise: CMakeFiles/Denoise.dir/src/util/mathutil.cpp.o
Denoise: CMakeFiles/Denoise.dir/build.make
Denoise: CMakeFiles/Denoise.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Denoise"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Denoise.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Denoise.dir/build: Denoise
.PHONY : CMakeFiles/Denoise.dir/build

CMakeFiles/Denoise.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Denoise.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Denoise.dir/clean

CMakeFiles/Denoise.dir/depend:
	cd "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5" "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5" "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build" "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build" "/Users/bytedance/Desktop/WorkSpace/games202 hw/homework5/build/CMakeFiles/Denoise.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Denoise.dir/depend

