# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/gubin/project_beta/project_beta/chatserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gubin/project_beta/project_beta/chatserver/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/ChatServer.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/ChatServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/ChatServer.dir/flags.make

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o: ../src/server/chatserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gubin/project_beta/project_beta/chatserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/chatserver.cpp.o -c /home/gubin/project_beta/project_beta/chatserver/src/server/chatserver.cpp

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/chatserver.cpp.i"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gubin/project_beta/project_beta/chatserver/src/server/chatserver.cpp > CMakeFiles/ChatServer.dir/chatserver.cpp.i

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/chatserver.cpp.s"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gubin/project_beta/project_beta/chatserver/src/server/chatserver.cpp -o CMakeFiles/ChatServer.dir/chatserver.cpp.s

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o


src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o: ../src/server/chatservice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gubin/project_beta/project_beta/chatserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/chatservice.cpp.o -c /home/gubin/project_beta/project_beta/chatserver/src/server/chatservice.cpp

src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/chatservice.cpp.i"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gubin/project_beta/project_beta/chatserver/src/server/chatservice.cpp > CMakeFiles/ChatServer.dir/chatservice.cpp.i

src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/chatservice.cpp.s"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gubin/project_beta/project_beta/chatserver/src/server/chatservice.cpp -o CMakeFiles/ChatServer.dir/chatservice.cpp.s

src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o


src/server/CMakeFiles/ChatServer.dir/main.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/main.cpp.o: ../src/server/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gubin/project_beta/project_beta/chatserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/ChatServer.dir/main.cpp.o"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/main.cpp.o -c /home/gubin/project_beta/project_beta/chatserver/src/server/main.cpp

src/server/CMakeFiles/ChatServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/main.cpp.i"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gubin/project_beta/project_beta/chatserver/src/server/main.cpp > CMakeFiles/ChatServer.dir/main.cpp.i

src/server/CMakeFiles/ChatServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/main.cpp.s"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gubin/project_beta/project_beta/chatserver/src/server/main.cpp -o CMakeFiles/ChatServer.dir/main.cpp.s

src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/main.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/main.cpp.o


src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o: ../src/server/db/db.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gubin/project_beta/project_beta/chatserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/db/db.cpp.o -c /home/gubin/project_beta/project_beta/chatserver/src/server/db/db.cpp

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/db/db.cpp.i"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gubin/project_beta/project_beta/chatserver/src/server/db/db.cpp > CMakeFiles/ChatServer.dir/db/db.cpp.i

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/db/db.cpp.s"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gubin/project_beta/project_beta/chatserver/src/server/db/db.cpp -o CMakeFiles/ChatServer.dir/db/db.cpp.s

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o


src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o: ../src/server/model/offlinemessagemodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gubin/project_beta/project_beta/chatserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o -c /home/gubin/project_beta/project_beta/chatserver/src/server/model/offlinemessagemodel.cpp

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.i"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gubin/project_beta/project_beta/chatserver/src/server/model/offlinemessagemodel.cpp > CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.s"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gubin/project_beta/project_beta/chatserver/src/server/model/offlinemessagemodel.cpp -o CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o


src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o: ../src/server/model/usermodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gubin/project_beta/project_beta/chatserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/model/usermodel.cpp.o -c /home/gubin/project_beta/project_beta/chatserver/src/server/model/usermodel.cpp

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/usermodel.cpp.i"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gubin/project_beta/project_beta/chatserver/src/server/model/usermodel.cpp > CMakeFiles/ChatServer.dir/model/usermodel.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/usermodel.cpp.s"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gubin/project_beta/project_beta/chatserver/src/server/model/usermodel.cpp -o CMakeFiles/ChatServer.dir/model/usermodel.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.requires:

.PHONY : src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.requires

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.provides: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/ChatServer.dir/build.make src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.provides

src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.provides.build: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o


# Object files for target ChatServer
ChatServer_OBJECTS = \
"CMakeFiles/ChatServer.dir/chatserver.cpp.o" \
"CMakeFiles/ChatServer.dir/chatservice.cpp.o" \
"CMakeFiles/ChatServer.dir/main.cpp.o" \
"CMakeFiles/ChatServer.dir/db/db.cpp.o" \
"CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o" \
"CMakeFiles/ChatServer.dir/model/usermodel.cpp.o"

# External object files for target ChatServer
ChatServer_EXTERNAL_OBJECTS =

../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/main.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/build.make
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gubin/project_beta/project_beta/chatserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ../../../bin/ChatServer"
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/ChatServer.dir/build: ../bin/ChatServer

.PHONY : src/server/CMakeFiles/ChatServer.dir/build

src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/chatserver.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/chatservice.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/main.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/offlinemessagemodel.cpp.o.requires
src/server/CMakeFiles/ChatServer.dir/requires: src/server/CMakeFiles/ChatServer.dir/model/usermodel.cpp.o.requires

.PHONY : src/server/CMakeFiles/ChatServer.dir/requires

src/server/CMakeFiles/ChatServer.dir/clean:
	cd /home/gubin/project_beta/project_beta/chatserver/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/ChatServer.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/ChatServer.dir/clean

src/server/CMakeFiles/ChatServer.dir/depend:
	cd /home/gubin/project_beta/project_beta/chatserver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gubin/project_beta/project_beta/chatserver /home/gubin/project_beta/project_beta/chatserver/src/server /home/gubin/project_beta/project_beta/chatserver/build /home/gubin/project_beta/project_beta/chatserver/build/src/server /home/gubin/project_beta/project_beta/chatserver/build/src/server/CMakeFiles/ChatServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/ChatServer.dir/depend

