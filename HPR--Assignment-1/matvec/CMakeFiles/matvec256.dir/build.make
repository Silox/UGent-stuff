# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /vscmnt/gent_vulpix/_/apps/gent/SL6/sandybridge/software/CMake/2.8.12-ictce-5.5.0/bin/cmake

# The command to remove a file.
RM = /vscmnt/gent_vulpix/_/apps/gent/SL6/sandybridge/software/CMake/2.8.12-ictce-5.5.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /vscmnt/gent_vulpix/_/apps/gent/SL6/sandybridge/software/CMake/2.8.12-ictce-5.5.0/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec

# Include any dependencies generated for this target.
include CMakeFiles/matvec256.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/matvec256.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matvec256.dir/flags.make

CMakeFiles/matvec256.dir/matvec256.cpp.o: CMakeFiles/matvec256.dir/flags.make
CMakeFiles/matvec256.dir/matvec256.cpp.o: matvec256.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/matvec256.dir/matvec256.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/matvec256.dir/matvec256.cpp.o -c /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec/matvec256.cpp

CMakeFiles/matvec256.dir/matvec256.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matvec256.dir/matvec256.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec/matvec256.cpp > CMakeFiles/matvec256.dir/matvec256.cpp.i

CMakeFiles/matvec256.dir/matvec256.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matvec256.dir/matvec256.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec/matvec256.cpp -o CMakeFiles/matvec256.dir/matvec256.cpp.s

CMakeFiles/matvec256.dir/matvec256.cpp.o.requires:
.PHONY : CMakeFiles/matvec256.dir/matvec256.cpp.o.requires

CMakeFiles/matvec256.dir/matvec256.cpp.o.provides: CMakeFiles/matvec256.dir/matvec256.cpp.o.requires
	$(MAKE) -f CMakeFiles/matvec256.dir/build.make CMakeFiles/matvec256.dir/matvec256.cpp.o.provides.build
.PHONY : CMakeFiles/matvec256.dir/matvec256.cpp.o.provides

CMakeFiles/matvec256.dir/matvec256.cpp.o.provides.build: CMakeFiles/matvec256.dir/matvec256.cpp.o

# Object files for target matvec256
matvec256_OBJECTS = \
"CMakeFiles/matvec256.dir/matvec256.cpp.o"

# External object files for target matvec256
matvec256_EXTERNAL_OBJECTS =

matvec256: CMakeFiles/matvec256.dir/matvec256.cpp.o
matvec256: CMakeFiles/matvec256.dir/build.make
matvec256: /apps/gent/SL6/sandybridge/software/imkl/11.0.5.192/mkl/lib/intel64/libmkl_intel_lp64.so
matvec256: /apps/gent/SL6/sandybridge/software/imkl/11.0.5.192/mkl/lib/intel64/libmkl_intel_thread.so
matvec256: /apps/gent/SL6/sandybridge/software/imkl/11.0.5.192/mkl/lib/intel64/libmkl_core.so
matvec256: /apps/gent/SL6/sandybridge/software/ifort/2013.5.192/compiler/lib/intel64/libiomp5.so
matvec256: CMakeFiles/matvec256.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable matvec256"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matvec256.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matvec256.dir/build: matvec256
.PHONY : CMakeFiles/matvec256.dir/build

CMakeFiles/matvec256.dir/requires: CMakeFiles/matvec256.dir/matvec256.cpp.o.requires
.PHONY : CMakeFiles/matvec256.dir/requires

CMakeFiles/matvec256.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matvec256.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matvec256.dir/clean

CMakeFiles/matvec256.dir/depend:
	cd /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec /user/home/gent/vsc408/vsc40889/HPR--Assignment-1/matvec/CMakeFiles/matvec256.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matvec256.dir/depend

