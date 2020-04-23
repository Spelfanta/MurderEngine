# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/edvinskomputa/Dokument/OnePunchEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edvinskomputa/Dokument/OnePunchEngine

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/edvinskomputa/Dokument/OnePunchEngine/CMakeFiles /home/edvinskomputa/Dokument/OnePunchEngine/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/edvinskomputa/Dokument/OnePunchEngine/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named MurderEngine

# Build rule for target.
MurderEngine: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 MurderEngine
.PHONY : MurderEngine

# fast build rule for target.
MurderEngine/fast:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/build
.PHONY : MurderEngine/fast

src/Main.o: src/Main.cpp.o

.PHONY : src/Main.o

# target to build an object file
src/Main.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/Main.cpp.o
.PHONY : src/Main.cpp.o

src/Main.i: src/Main.cpp.i

.PHONY : src/Main.i

# target to preprocess a source file
src/Main.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/Main.cpp.i
.PHONY : src/Main.cpp.i

src/Main.s: src/Main.cpp.s

.PHONY : src/Main.s

# target to generate assembly for a file
src/Main.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/Main.cpp.s
.PHONY : src/Main.cpp.s

src/engine/EngineInit.o: src/engine/EngineInit.cpp.o

.PHONY : src/engine/EngineInit.o

# target to build an object file
src/engine/EngineInit.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/EngineInit.cpp.o
.PHONY : src/engine/EngineInit.cpp.o

src/engine/EngineInit.i: src/engine/EngineInit.cpp.i

.PHONY : src/engine/EngineInit.i

# target to preprocess a source file
src/engine/EngineInit.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/EngineInit.cpp.i
.PHONY : src/engine/EngineInit.cpp.i

src/engine/EngineInit.s: src/engine/EngineInit.cpp.s

.PHONY : src/engine/EngineInit.s

# target to generate assembly for a file
src/engine/EngineInit.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/EngineInit.cpp.s
.PHONY : src/engine/EngineInit.cpp.s

src/engine/MurderEngine.o: src/engine/MurderEngine.cpp.o

.PHONY : src/engine/MurderEngine.o

# target to build an object file
src/engine/MurderEngine.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/MurderEngine.cpp.o
.PHONY : src/engine/MurderEngine.cpp.o

src/engine/MurderEngine.i: src/engine/MurderEngine.cpp.i

.PHONY : src/engine/MurderEngine.i

# target to preprocess a source file
src/engine/MurderEngine.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/MurderEngine.cpp.i
.PHONY : src/engine/MurderEngine.cpp.i

src/engine/MurderEngine.s: src/engine/MurderEngine.cpp.s

.PHONY : src/engine/MurderEngine.s

# target to generate assembly for a file
src/engine/MurderEngine.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/MurderEngine.cpp.s
.PHONY : src/engine/MurderEngine.cpp.s

src/engine/audio/audio_system.o: src/engine/audio/audio_system.cpp.o

.PHONY : src/engine/audio/audio_system.o

# target to build an object file
src/engine/audio/audio_system.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/audio/audio_system.cpp.o
.PHONY : src/engine/audio/audio_system.cpp.o

src/engine/audio/audio_system.i: src/engine/audio/audio_system.cpp.i

.PHONY : src/engine/audio/audio_system.i

# target to preprocess a source file
src/engine/audio/audio_system.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/audio/audio_system.cpp.i
.PHONY : src/engine/audio/audio_system.cpp.i

src/engine/audio/audio_system.s: src/engine/audio/audio_system.cpp.s

.PHONY : src/engine/audio/audio_system.s

# target to generate assembly for a file
src/engine/audio/audio_system.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/audio/audio_system.cpp.s
.PHONY : src/engine/audio/audio_system.cpp.s

src/engine/kernel/io/file_reader.o: src/engine/kernel/io/file_reader.cpp.o

.PHONY : src/engine/kernel/io/file_reader.o

# target to build an object file
src/engine/kernel/io/file_reader.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/kernel/io/file_reader.cpp.o
.PHONY : src/engine/kernel/io/file_reader.cpp.o

src/engine/kernel/io/file_reader.i: src/engine/kernel/io/file_reader.cpp.i

.PHONY : src/engine/kernel/io/file_reader.i

# target to preprocess a source file
src/engine/kernel/io/file_reader.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/kernel/io/file_reader.cpp.i
.PHONY : src/engine/kernel/io/file_reader.cpp.i

src/engine/kernel/io/file_reader.s: src/engine/kernel/io/file_reader.cpp.s

.PHONY : src/engine/kernel/io/file_reader.s

# target to generate assembly for a file
src/engine/kernel/io/file_reader.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/kernel/io/file_reader.cpp.s
.PHONY : src/engine/kernel/io/file_reader.cpp.s

src/engine/kernel/string.o: src/engine/kernel/string.cpp.o

.PHONY : src/engine/kernel/string.o

# target to build an object file
src/engine/kernel/string.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/kernel/string.cpp.o
.PHONY : src/engine/kernel/string.cpp.o

src/engine/kernel/string.i: src/engine/kernel/string.cpp.i

.PHONY : src/engine/kernel/string.i

# target to preprocess a source file
src/engine/kernel/string.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/kernel/string.cpp.i
.PHONY : src/engine/kernel/string.cpp.i

src/engine/kernel/string.s: src/engine/kernel/string.cpp.s

.PHONY : src/engine/kernel/string.s

# target to generate assembly for a file
src/engine/kernel/string.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/kernel/string.cpp.s
.PHONY : src/engine/kernel/string.cpp.s

src/engine/loader/file_format.o: src/engine/loader/file_format.cpp.o

.PHONY : src/engine/loader/file_format.o

# target to build an object file
src/engine/loader/file_format.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/file_format.cpp.o
.PHONY : src/engine/loader/file_format.cpp.o

src/engine/loader/file_format.i: src/engine/loader/file_format.cpp.i

.PHONY : src/engine/loader/file_format.i

# target to preprocess a source file
src/engine/loader/file_format.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/file_format.cpp.i
.PHONY : src/engine/loader/file_format.cpp.i

src/engine/loader/file_format.s: src/engine/loader/file_format.cpp.s

.PHONY : src/engine/loader/file_format.s

# target to generate assembly for a file
src/engine/loader/file_format.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/file_format.cpp.s
.PHONY : src/engine/loader/file_format.cpp.s

src/engine/loader/formats/bmp/bmp_format.o: src/engine/loader/formats/bmp/bmp_format.cpp.o

.PHONY : src/engine/loader/formats/bmp/bmp_format.o

# target to build an object file
src/engine/loader/formats/bmp/bmp_format.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/bmp/bmp_format.cpp.o
.PHONY : src/engine/loader/formats/bmp/bmp_format.cpp.o

src/engine/loader/formats/bmp/bmp_format.i: src/engine/loader/formats/bmp/bmp_format.cpp.i

.PHONY : src/engine/loader/formats/bmp/bmp_format.i

# target to preprocess a source file
src/engine/loader/formats/bmp/bmp_format.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/bmp/bmp_format.cpp.i
.PHONY : src/engine/loader/formats/bmp/bmp_format.cpp.i

src/engine/loader/formats/bmp/bmp_format.s: src/engine/loader/formats/bmp/bmp_format.cpp.s

.PHONY : src/engine/loader/formats/bmp/bmp_format.s

# target to generate assembly for a file
src/engine/loader/formats/bmp/bmp_format.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/bmp/bmp_format.cpp.s
.PHONY : src/engine/loader/formats/bmp/bmp_format.cpp.s

src/engine/loader/formats/collada/collada_format.o: src/engine/loader/formats/collada/collada_format.cpp.o

.PHONY : src/engine/loader/formats/collada/collada_format.o

# target to build an object file
src/engine/loader/formats/collada/collada_format.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/collada/collada_format.cpp.o
.PHONY : src/engine/loader/formats/collada/collada_format.cpp.o

src/engine/loader/formats/collada/collada_format.i: src/engine/loader/formats/collada/collada_format.cpp.i

.PHONY : src/engine/loader/formats/collada/collada_format.i

# target to preprocess a source file
src/engine/loader/formats/collada/collada_format.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/collada/collada_format.cpp.i
.PHONY : src/engine/loader/formats/collada/collada_format.cpp.i

src/engine/loader/formats/collada/collada_format.s: src/engine/loader/formats/collada/collada_format.cpp.s

.PHONY : src/engine/loader/formats/collada/collada_format.s

# target to generate assembly for a file
src/engine/loader/formats/collada/collada_format.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/collada/collada_format.cpp.s
.PHONY : src/engine/loader/formats/collada/collada_format.cpp.s

src/engine/loader/formats/glsl/glsl_format.o: src/engine/loader/formats/glsl/glsl_format.cpp.o

.PHONY : src/engine/loader/formats/glsl/glsl_format.o

# target to build an object file
src/engine/loader/formats/glsl/glsl_format.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/glsl/glsl_format.cpp.o
.PHONY : src/engine/loader/formats/glsl/glsl_format.cpp.o

src/engine/loader/formats/glsl/glsl_format.i: src/engine/loader/formats/glsl/glsl_format.cpp.i

.PHONY : src/engine/loader/formats/glsl/glsl_format.i

# target to preprocess a source file
src/engine/loader/formats/glsl/glsl_format.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/glsl/glsl_format.cpp.i
.PHONY : src/engine/loader/formats/glsl/glsl_format.cpp.i

src/engine/loader/formats/glsl/glsl_format.s: src/engine/loader/formats/glsl/glsl_format.cpp.s

.PHONY : src/engine/loader/formats/glsl/glsl_format.s

# target to generate assembly for a file
src/engine/loader/formats/glsl/glsl_format.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/glsl/glsl_format.cpp.s
.PHONY : src/engine/loader/formats/glsl/glsl_format.cpp.s

src/engine/loader/formats/png/png_format.o: src/engine/loader/formats/png/png_format.cpp.o

.PHONY : src/engine/loader/formats/png/png_format.o

# target to build an object file
src/engine/loader/formats/png/png_format.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/png/png_format.cpp.o
.PHONY : src/engine/loader/formats/png/png_format.cpp.o

src/engine/loader/formats/png/png_format.i: src/engine/loader/formats/png/png_format.cpp.i

.PHONY : src/engine/loader/formats/png/png_format.i

# target to preprocess a source file
src/engine/loader/formats/png/png_format.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/png/png_format.cpp.i
.PHONY : src/engine/loader/formats/png/png_format.cpp.i

src/engine/loader/formats/png/png_format.s: src/engine/loader/formats/png/png_format.cpp.s

.PHONY : src/engine/loader/formats/png/png_format.s

# target to generate assembly for a file
src/engine/loader/formats/png/png_format.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/png/png_format.cpp.s
.PHONY : src/engine/loader/formats/png/png_format.cpp.s

src/engine/loader/formats/wave/wave_format.o: src/engine/loader/formats/wave/wave_format.cpp.o

.PHONY : src/engine/loader/formats/wave/wave_format.o

# target to build an object file
src/engine/loader/formats/wave/wave_format.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/wave/wave_format.cpp.o
.PHONY : src/engine/loader/formats/wave/wave_format.cpp.o

src/engine/loader/formats/wave/wave_format.i: src/engine/loader/formats/wave/wave_format.cpp.i

.PHONY : src/engine/loader/formats/wave/wave_format.i

# target to preprocess a source file
src/engine/loader/formats/wave/wave_format.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/wave/wave_format.cpp.i
.PHONY : src/engine/loader/formats/wave/wave_format.cpp.i

src/engine/loader/formats/wave/wave_format.s: src/engine/loader/formats/wave/wave_format.cpp.s

.PHONY : src/engine/loader/formats/wave/wave_format.s

# target to generate assembly for a file
src/engine/loader/formats/wave/wave_format.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/formats/wave/wave_format.cpp.s
.PHONY : src/engine/loader/formats/wave/wave_format.cpp.s

src/engine/loader/scene_format.o: src/engine/loader/scene_format.cpp.o

.PHONY : src/engine/loader/scene_format.o

# target to build an object file
src/engine/loader/scene_format.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/scene_format.cpp.o
.PHONY : src/engine/loader/scene_format.cpp.o

src/engine/loader/scene_format.i: src/engine/loader/scene_format.cpp.i

.PHONY : src/engine/loader/scene_format.i

# target to preprocess a source file
src/engine/loader/scene_format.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/scene_format.cpp.i
.PHONY : src/engine/loader/scene_format.cpp.i

src/engine/loader/scene_format.s: src/engine/loader/scene_format.cpp.s

.PHONY : src/engine/loader/scene_format.s

# target to generate assembly for a file
src/engine/loader/scene_format.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/loader/scene_format.cpp.s
.PHONY : src/engine/loader/scene_format.cpp.s

src/engine/math/maths.o: src/engine/math/maths.cpp.o

.PHONY : src/engine/math/maths.o

# target to build an object file
src/engine/math/maths.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/maths.cpp.o
.PHONY : src/engine/math/maths.cpp.o

src/engine/math/maths.i: src/engine/math/maths.cpp.i

.PHONY : src/engine/math/maths.i

# target to preprocess a source file
src/engine/math/maths.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/maths.cpp.i
.PHONY : src/engine/math/maths.cpp.i

src/engine/math/maths.s: src/engine/math/maths.cpp.s

.PHONY : src/engine/math/maths.s

# target to generate assembly for a file
src/engine/math/maths.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/maths.cpp.s
.PHONY : src/engine/math/maths.cpp.s

src/engine/math/vector2.o: src/engine/math/vector2.cpp.o

.PHONY : src/engine/math/vector2.o

# target to build an object file
src/engine/math/vector2.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector2.cpp.o
.PHONY : src/engine/math/vector2.cpp.o

src/engine/math/vector2.i: src/engine/math/vector2.cpp.i

.PHONY : src/engine/math/vector2.i

# target to preprocess a source file
src/engine/math/vector2.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector2.cpp.i
.PHONY : src/engine/math/vector2.cpp.i

src/engine/math/vector2.s: src/engine/math/vector2.cpp.s

.PHONY : src/engine/math/vector2.s

# target to generate assembly for a file
src/engine/math/vector2.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector2.cpp.s
.PHONY : src/engine/math/vector2.cpp.s

src/engine/math/vector3.o: src/engine/math/vector3.cpp.o

.PHONY : src/engine/math/vector3.o

# target to build an object file
src/engine/math/vector3.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector3.cpp.o
.PHONY : src/engine/math/vector3.cpp.o

src/engine/math/vector3.i: src/engine/math/vector3.cpp.i

.PHONY : src/engine/math/vector3.i

# target to preprocess a source file
src/engine/math/vector3.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector3.cpp.i
.PHONY : src/engine/math/vector3.cpp.i

src/engine/math/vector3.s: src/engine/math/vector3.cpp.s

.PHONY : src/engine/math/vector3.s

# target to generate assembly for a file
src/engine/math/vector3.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector3.cpp.s
.PHONY : src/engine/math/vector3.cpp.s

src/engine/math/vector4.o: src/engine/math/vector4.cpp.o

.PHONY : src/engine/math/vector4.o

# target to build an object file
src/engine/math/vector4.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector4.cpp.o
.PHONY : src/engine/math/vector4.cpp.o

src/engine/math/vector4.i: src/engine/math/vector4.cpp.i

.PHONY : src/engine/math/vector4.i

# target to preprocess a source file
src/engine/math/vector4.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector4.cpp.i
.PHONY : src/engine/math/vector4.cpp.i

src/engine/math/vector4.s: src/engine/math/vector4.cpp.s

.PHONY : src/engine/math/vector4.s

# target to generate assembly for a file
src/engine/math/vector4.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector4.cpp.s
.PHONY : src/engine/math/vector4.cpp.s

src/engine/math/vector_utils.o: src/engine/math/vector_utils.cpp.o

.PHONY : src/engine/math/vector_utils.o

# target to build an object file
src/engine/math/vector_utils.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector_utils.cpp.o
.PHONY : src/engine/math/vector_utils.cpp.o

src/engine/math/vector_utils.i: src/engine/math/vector_utils.cpp.i

.PHONY : src/engine/math/vector_utils.i

# target to preprocess a source file
src/engine/math/vector_utils.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector_utils.cpp.i
.PHONY : src/engine/math/vector_utils.cpp.i

src/engine/math/vector_utils.s: src/engine/math/vector_utils.cpp.s

.PHONY : src/engine/math/vector_utils.s

# target to generate assembly for a file
src/engine/math/vector_utils.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/math/vector_utils.cpp.s
.PHONY : src/engine/math/vector_utils.cpp.s

src/engine/renderer/opengl/opengl_api.o: src/engine/renderer/opengl/opengl_api.cpp.o

.PHONY : src/engine/renderer/opengl/opengl_api.o

# target to build an object file
src/engine/renderer/opengl/opengl_api.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/renderer/opengl/opengl_api.cpp.o
.PHONY : src/engine/renderer/opengl/opengl_api.cpp.o

src/engine/renderer/opengl/opengl_api.i: src/engine/renderer/opengl/opengl_api.cpp.i

.PHONY : src/engine/renderer/opengl/opengl_api.i

# target to preprocess a source file
src/engine/renderer/opengl/opengl_api.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/renderer/opengl/opengl_api.cpp.i
.PHONY : src/engine/renderer/opengl/opengl_api.cpp.i

src/engine/renderer/opengl/opengl_api.s: src/engine/renderer/opengl/opengl_api.cpp.s

.PHONY : src/engine/renderer/opengl/opengl_api.s

# target to generate assembly for a file
src/engine/renderer/opengl/opengl_api.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/renderer/opengl/opengl_api.cpp.s
.PHONY : src/engine/renderer/opengl/opengl_api.cpp.s

src/engine/renderer/vulkan/vulkan_api.o: src/engine/renderer/vulkan/vulkan_api.cpp.o

.PHONY : src/engine/renderer/vulkan/vulkan_api.o

# target to build an object file
src/engine/renderer/vulkan/vulkan_api.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/renderer/vulkan/vulkan_api.cpp.o
.PHONY : src/engine/renderer/vulkan/vulkan_api.cpp.o

src/engine/renderer/vulkan/vulkan_api.i: src/engine/renderer/vulkan/vulkan_api.cpp.i

.PHONY : src/engine/renderer/vulkan/vulkan_api.i

# target to preprocess a source file
src/engine/renderer/vulkan/vulkan_api.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/renderer/vulkan/vulkan_api.cpp.i
.PHONY : src/engine/renderer/vulkan/vulkan_api.cpp.i

src/engine/renderer/vulkan/vulkan_api.s: src/engine/renderer/vulkan/vulkan_api.cpp.s

.PHONY : src/engine/renderer/vulkan/vulkan_api.s

# target to generate assembly for a file
src/engine/renderer/vulkan/vulkan_api.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/renderer/vulkan/vulkan_api.cpp.s
.PHONY : src/engine/renderer/vulkan/vulkan_api.cpp.s

src/engine/scene/scene.o: src/engine/scene/scene.cpp.o

.PHONY : src/engine/scene/scene.o

# target to build an object file
src/engine/scene/scene.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/scene/scene.cpp.o
.PHONY : src/engine/scene/scene.cpp.o

src/engine/scene/scene.i: src/engine/scene/scene.cpp.i

.PHONY : src/engine/scene/scene.i

# target to preprocess a source file
src/engine/scene/scene.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/scene/scene.cpp.i
.PHONY : src/engine/scene/scene.cpp.i

src/engine/scene/scene.s: src/engine/scene/scene.cpp.s

.PHONY : src/engine/scene/scene.s

# target to generate assembly for a file
src/engine/scene/scene.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/scene/scene.cpp.s
.PHONY : src/engine/scene/scene.cpp.s

src/engine/scene/scenes/scene_2d_viewport.o: src/engine/scene/scenes/scene_2d_viewport.cpp.o

.PHONY : src/engine/scene/scenes/scene_2d_viewport.o

# target to build an object file
src/engine/scene/scenes/scene_2d_viewport.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/scene/scenes/scene_2d_viewport.cpp.o
.PHONY : src/engine/scene/scenes/scene_2d_viewport.cpp.o

src/engine/scene/scenes/scene_2d_viewport.i: src/engine/scene/scenes/scene_2d_viewport.cpp.i

.PHONY : src/engine/scene/scenes/scene_2d_viewport.i

# target to preprocess a source file
src/engine/scene/scenes/scene_2d_viewport.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/scene/scenes/scene_2d_viewport.cpp.i
.PHONY : src/engine/scene/scenes/scene_2d_viewport.cpp.i

src/engine/scene/scenes/scene_2d_viewport.s: src/engine/scene/scenes/scene_2d_viewport.cpp.s

.PHONY : src/engine/scene/scenes/scene_2d_viewport.s

# target to generate assembly for a file
src/engine/scene/scenes/scene_2d_viewport.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/scene/scenes/scene_2d_viewport.cpp.s
.PHONY : src/engine/scene/scenes/scene_2d_viewport.cpp.s

src/engine/utilities/TimeUtils.o: src/engine/utilities/TimeUtils.cpp.o

.PHONY : src/engine/utilities/TimeUtils.o

# target to build an object file
src/engine/utilities/TimeUtils.cpp.o:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/utilities/TimeUtils.cpp.o
.PHONY : src/engine/utilities/TimeUtils.cpp.o

src/engine/utilities/TimeUtils.i: src/engine/utilities/TimeUtils.cpp.i

.PHONY : src/engine/utilities/TimeUtils.i

# target to preprocess a source file
src/engine/utilities/TimeUtils.cpp.i:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/utilities/TimeUtils.cpp.i
.PHONY : src/engine/utilities/TimeUtils.cpp.i

src/engine/utilities/TimeUtils.s: src/engine/utilities/TimeUtils.cpp.s

.PHONY : src/engine/utilities/TimeUtils.s

# target to generate assembly for a file
src/engine/utilities/TimeUtils.cpp.s:
	$(MAKE) -f CMakeFiles/MurderEngine.dir/build.make CMakeFiles/MurderEngine.dir/src/engine/utilities/TimeUtils.cpp.s
.PHONY : src/engine/utilities/TimeUtils.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... MurderEngine"
	@echo "... src/Main.o"
	@echo "... src/Main.i"
	@echo "... src/Main.s"
	@echo "... src/engine/EngineInit.o"
	@echo "... src/engine/EngineInit.i"
	@echo "... src/engine/EngineInit.s"
	@echo "... src/engine/MurderEngine.o"
	@echo "... src/engine/MurderEngine.i"
	@echo "... src/engine/MurderEngine.s"
	@echo "... src/engine/audio/audio_system.o"
	@echo "... src/engine/audio/audio_system.i"
	@echo "... src/engine/audio/audio_system.s"
	@echo "... src/engine/kernel/io/file_reader.o"
	@echo "... src/engine/kernel/io/file_reader.i"
	@echo "... src/engine/kernel/io/file_reader.s"
	@echo "... src/engine/kernel/string.o"
	@echo "... src/engine/kernel/string.i"
	@echo "... src/engine/kernel/string.s"
	@echo "... src/engine/loader/file_format.o"
	@echo "... src/engine/loader/file_format.i"
	@echo "... src/engine/loader/file_format.s"
	@echo "... src/engine/loader/formats/bmp/bmp_format.o"
	@echo "... src/engine/loader/formats/bmp/bmp_format.i"
	@echo "... src/engine/loader/formats/bmp/bmp_format.s"
	@echo "... src/engine/loader/formats/collada/collada_format.o"
	@echo "... src/engine/loader/formats/collada/collada_format.i"
	@echo "... src/engine/loader/formats/collada/collada_format.s"
	@echo "... src/engine/loader/formats/glsl/glsl_format.o"
	@echo "... src/engine/loader/formats/glsl/glsl_format.i"
	@echo "... src/engine/loader/formats/glsl/glsl_format.s"
	@echo "... src/engine/loader/formats/png/png_format.o"
	@echo "... src/engine/loader/formats/png/png_format.i"
	@echo "... src/engine/loader/formats/png/png_format.s"
	@echo "... src/engine/loader/formats/wave/wave_format.o"
	@echo "... src/engine/loader/formats/wave/wave_format.i"
	@echo "... src/engine/loader/formats/wave/wave_format.s"
	@echo "... src/engine/loader/scene_format.o"
	@echo "... src/engine/loader/scene_format.i"
	@echo "... src/engine/loader/scene_format.s"
	@echo "... src/engine/math/maths.o"
	@echo "... src/engine/math/maths.i"
	@echo "... src/engine/math/maths.s"
	@echo "... src/engine/math/vector2.o"
	@echo "... src/engine/math/vector2.i"
	@echo "... src/engine/math/vector2.s"
	@echo "... src/engine/math/vector3.o"
	@echo "... src/engine/math/vector3.i"
	@echo "... src/engine/math/vector3.s"
	@echo "... src/engine/math/vector4.o"
	@echo "... src/engine/math/vector4.i"
	@echo "... src/engine/math/vector4.s"
	@echo "... src/engine/math/vector_utils.o"
	@echo "... src/engine/math/vector_utils.i"
	@echo "... src/engine/math/vector_utils.s"
	@echo "... src/engine/renderer/opengl/opengl_api.o"
	@echo "... src/engine/renderer/opengl/opengl_api.i"
	@echo "... src/engine/renderer/opengl/opengl_api.s"
	@echo "... src/engine/renderer/vulkan/vulkan_api.o"
	@echo "... src/engine/renderer/vulkan/vulkan_api.i"
	@echo "... src/engine/renderer/vulkan/vulkan_api.s"
	@echo "... src/engine/scene/scene.o"
	@echo "... src/engine/scene/scene.i"
	@echo "... src/engine/scene/scene.s"
	@echo "... src/engine/scene/scenes/scene_2d_viewport.o"
	@echo "... src/engine/scene/scenes/scene_2d_viewport.i"
	@echo "... src/engine/scene/scenes/scene_2d_viewport.s"
	@echo "... src/engine/utilities/TimeUtils.o"
	@echo "... src/engine/utilities/TimeUtils.i"
	@echo "... src/engine/utilities/TimeUtils.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

