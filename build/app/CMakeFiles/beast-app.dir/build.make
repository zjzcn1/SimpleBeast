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
CMAKE_SOURCE_DIR = /vagrant/Source/boost-beast-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /vagrant/Source/boost-beast-example/build

# Include any dependencies generated for this target.
include app/CMakeFiles/beast-app.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/beast-app.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/beast-app.dir/flags.make

app/CMakeFiles/beast-app.dir/src/http_session.cpp.o: app/CMakeFiles/beast-app.dir/flags.make
app/CMakeFiles/beast-app.dir/src/http_session.cpp.o: ../app/src/http_session.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/Source/boost-beast-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/beast-app.dir/src/http_session.cpp.o"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beast-app.dir/src/http_session.cpp.o -c /vagrant/Source/boost-beast-example/app/src/http_session.cpp

app/CMakeFiles/beast-app.dir/src/http_session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beast-app.dir/src/http_session.cpp.i"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/Source/boost-beast-example/app/src/http_session.cpp > CMakeFiles/beast-app.dir/src/http_session.cpp.i

app/CMakeFiles/beast-app.dir/src/http_session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beast-app.dir/src/http_session.cpp.s"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/Source/boost-beast-example/app/src/http_session.cpp -o CMakeFiles/beast-app.dir/src/http_session.cpp.s

app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.requires:

.PHONY : app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.requires

app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.provides: app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/beast-app.dir/build.make app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.provides.build
.PHONY : app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.provides

app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.provides.build: app/CMakeFiles/beast-app.dir/src/http_session.cpp.o


app/CMakeFiles/beast-app.dir/src/listener.cpp.o: app/CMakeFiles/beast-app.dir/flags.make
app/CMakeFiles/beast-app.dir/src/listener.cpp.o: ../app/src/listener.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/Source/boost-beast-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object app/CMakeFiles/beast-app.dir/src/listener.cpp.o"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beast-app.dir/src/listener.cpp.o -c /vagrant/Source/boost-beast-example/app/src/listener.cpp

app/CMakeFiles/beast-app.dir/src/listener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beast-app.dir/src/listener.cpp.i"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/Source/boost-beast-example/app/src/listener.cpp > CMakeFiles/beast-app.dir/src/listener.cpp.i

app/CMakeFiles/beast-app.dir/src/listener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beast-app.dir/src/listener.cpp.s"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/Source/boost-beast-example/app/src/listener.cpp -o CMakeFiles/beast-app.dir/src/listener.cpp.s

app/CMakeFiles/beast-app.dir/src/listener.cpp.o.requires:

.PHONY : app/CMakeFiles/beast-app.dir/src/listener.cpp.o.requires

app/CMakeFiles/beast-app.dir/src/listener.cpp.o.provides: app/CMakeFiles/beast-app.dir/src/listener.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/beast-app.dir/build.make app/CMakeFiles/beast-app.dir/src/listener.cpp.o.provides.build
.PHONY : app/CMakeFiles/beast-app.dir/src/listener.cpp.o.provides

app/CMakeFiles/beast-app.dir/src/listener.cpp.o.provides.build: app/CMakeFiles/beast-app.dir/src/listener.cpp.o


app/CMakeFiles/beast-app.dir/src/main.cpp.o: app/CMakeFiles/beast-app.dir/flags.make
app/CMakeFiles/beast-app.dir/src/main.cpp.o: ../app/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/Source/boost-beast-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object app/CMakeFiles/beast-app.dir/src/main.cpp.o"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beast-app.dir/src/main.cpp.o -c /vagrant/Source/boost-beast-example/app/src/main.cpp

app/CMakeFiles/beast-app.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beast-app.dir/src/main.cpp.i"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/Source/boost-beast-example/app/src/main.cpp > CMakeFiles/beast-app.dir/src/main.cpp.i

app/CMakeFiles/beast-app.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beast-app.dir/src/main.cpp.s"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/Source/boost-beast-example/app/src/main.cpp -o CMakeFiles/beast-app.dir/src/main.cpp.s

app/CMakeFiles/beast-app.dir/src/main.cpp.o.requires:

.PHONY : app/CMakeFiles/beast-app.dir/src/main.cpp.o.requires

app/CMakeFiles/beast-app.dir/src/main.cpp.o.provides: app/CMakeFiles/beast-app.dir/src/main.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/beast-app.dir/build.make app/CMakeFiles/beast-app.dir/src/main.cpp.o.provides.build
.PHONY : app/CMakeFiles/beast-app.dir/src/main.cpp.o.provides

app/CMakeFiles/beast-app.dir/src/main.cpp.o.provides.build: app/CMakeFiles/beast-app.dir/src/main.cpp.o


app/CMakeFiles/beast-app.dir/src/misc.cpp.o: app/CMakeFiles/beast-app.dir/flags.make
app/CMakeFiles/beast-app.dir/src/misc.cpp.o: ../app/src/misc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/Source/boost-beast-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object app/CMakeFiles/beast-app.dir/src/misc.cpp.o"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beast-app.dir/src/misc.cpp.o -c /vagrant/Source/boost-beast-example/app/src/misc.cpp

app/CMakeFiles/beast-app.dir/src/misc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beast-app.dir/src/misc.cpp.i"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/Source/boost-beast-example/app/src/misc.cpp > CMakeFiles/beast-app.dir/src/misc.cpp.i

app/CMakeFiles/beast-app.dir/src/misc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beast-app.dir/src/misc.cpp.s"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/Source/boost-beast-example/app/src/misc.cpp -o CMakeFiles/beast-app.dir/src/misc.cpp.s

app/CMakeFiles/beast-app.dir/src/misc.cpp.o.requires:

.PHONY : app/CMakeFiles/beast-app.dir/src/misc.cpp.o.requires

app/CMakeFiles/beast-app.dir/src/misc.cpp.o.provides: app/CMakeFiles/beast-app.dir/src/misc.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/beast-app.dir/build.make app/CMakeFiles/beast-app.dir/src/misc.cpp.o.provides.build
.PHONY : app/CMakeFiles/beast-app.dir/src/misc.cpp.o.provides

app/CMakeFiles/beast-app.dir/src/misc.cpp.o.provides.build: app/CMakeFiles/beast-app.dir/src/misc.cpp.o


app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o: app/CMakeFiles/beast-app.dir/flags.make
app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o: ../app/src/websocket_session.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/vagrant/Source/boost-beast-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beast-app.dir/src/websocket_session.cpp.o -c /vagrant/Source/boost-beast-example/app/src/websocket_session.cpp

app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beast-app.dir/src/websocket_session.cpp.i"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /vagrant/Source/boost-beast-example/app/src/websocket_session.cpp > CMakeFiles/beast-app.dir/src/websocket_session.cpp.i

app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beast-app.dir/src/websocket_session.cpp.s"
	cd /vagrant/Source/boost-beast-example/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /vagrant/Source/boost-beast-example/app/src/websocket_session.cpp -o CMakeFiles/beast-app.dir/src/websocket_session.cpp.s

app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.requires:

.PHONY : app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.requires

app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.provides: app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.requires
	$(MAKE) -f app/CMakeFiles/beast-app.dir/build.make app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.provides.build
.PHONY : app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.provides

app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.provides.build: app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o


# Object files for target beast-app
beast__app_OBJECTS = \
"CMakeFiles/beast-app.dir/src/http_session.cpp.o" \
"CMakeFiles/beast-app.dir/src/listener.cpp.o" \
"CMakeFiles/beast-app.dir/src/main.cpp.o" \
"CMakeFiles/beast-app.dir/src/misc.cpp.o" \
"CMakeFiles/beast-app.dir/src/websocket_session.cpp.o"

# External object files for target beast-app
beast__app_EXTERNAL_OBJECTS =

app/beast-app: app/CMakeFiles/beast-app.dir/src/http_session.cpp.o
app/beast-app: app/CMakeFiles/beast-app.dir/src/listener.cpp.o
app/beast-app: app/CMakeFiles/beast-app.dir/src/main.cpp.o
app/beast-app: app/CMakeFiles/beast-app.dir/src/misc.cpp.o
app/beast-app: app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o
app/beast-app: app/CMakeFiles/beast-app.dir/build.make
app/beast-app: app/CMakeFiles/beast-app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/vagrant/Source/boost-beast-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable beast-app"
	cd /vagrant/Source/boost-beast-example/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/beast-app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/beast-app.dir/build: app/beast-app

.PHONY : app/CMakeFiles/beast-app.dir/build

app/CMakeFiles/beast-app.dir/requires: app/CMakeFiles/beast-app.dir/src/http_session.cpp.o.requires
app/CMakeFiles/beast-app.dir/requires: app/CMakeFiles/beast-app.dir/src/listener.cpp.o.requires
app/CMakeFiles/beast-app.dir/requires: app/CMakeFiles/beast-app.dir/src/main.cpp.o.requires
app/CMakeFiles/beast-app.dir/requires: app/CMakeFiles/beast-app.dir/src/misc.cpp.o.requires
app/CMakeFiles/beast-app.dir/requires: app/CMakeFiles/beast-app.dir/src/websocket_session.cpp.o.requires

.PHONY : app/CMakeFiles/beast-app.dir/requires

app/CMakeFiles/beast-app.dir/clean:
	cd /vagrant/Source/boost-beast-example/build/app && $(CMAKE_COMMAND) -P CMakeFiles/beast-app.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/beast-app.dir/clean

app/CMakeFiles/beast-app.dir/depend:
	cd /vagrant/Source/boost-beast-example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /vagrant/Source/boost-beast-example /vagrant/Source/boost-beast-example/app /vagrant/Source/boost-beast-example/build /vagrant/Source/boost-beast-example/build/app /vagrant/Source/boost-beast-example/build/app/CMakeFiles/beast-app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/beast-app.dir/depend

