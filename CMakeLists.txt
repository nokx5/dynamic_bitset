cmake_minimum_required(VERSION 3.1)

Project(field C CXX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall")
set(CMAKE_CXX_STANDARD 14)

########################################################################
#
# clang-format
#
########################################################################
# http://mariobadr.com/using-clang-format-to-enforce-style.html
# set(CLANG_FORMAT_EXE "clang-format")
find_program(
  CLANG_FORMAT_EXE
  NAMES "clang-format"
  DOC "Path to clang-format executable"
  )
if(NOT CLANG_FORMAT_EXE)
  message(STATUS "clang-format not found.")
else()
  message(STATUS "clang-format found: ${CLANG_FORMAT_EXE}")
  set(DO_CLANG_FORMAT "${CLANG_FORMAT_EXE}" "-i -style=file")
endif()


if(CLANG_FORMAT_EXE)
  file(GLOB FILES_TO_FORMAT "src/*.hpp" "tests/*.hpp" "tests/*.cpp")
  # message(STATUS "CLANG-FORMAT ready for  ${FILES_TO_FORMAT}")
  # clang-format -style=llvm -dump-config > .clang-format
  add_custom_target(
    clang-form
    COMMAND ${CLANG_FORMAT_EXE} -i -style=llvm ${FILES_TO_FORMAT}
  )
endif()


########################################################################
#
# include
#
########################################################################
include_directories(${PROJECT_SOURCE_DIR}/src)
# set(CODING ${CMAKE_CURRENT_SOURCE_DIR}/field.hpp ${CMAKE_CURRENT_SOURCE_DIR}/bitset.hpp ${CMAKE_CURRENT_SOURCE_DIR}/matrix.hpp )
add_subdirectory(${PROJECT_SOURCE_DIR}/src)

########################################################################
#
# Sandbox
#
########################################################################
add_subdirectory(sandbox)

########################################################################
#
# Test
#
########################################################################
option(BUILD_TESTING "Build Tests" OFF)
if(BUILD_TESTING)

  find_package(Boost COMPONENTS system filesystem unit_test_framework program_options REQUIRED)
  include_directories(SYSTEM ${Boost_INCLUDE_DIR})

  include(CTest)
  enable_testing()
  add_subdirectory(tests)
else()
  message(STATUS "Enable testing with cmake cmd (-DBUILD_TESTING=ON)")
  message(STATUS "cmake ../field -DBUILD_TESTING=ON && make")
endif()
