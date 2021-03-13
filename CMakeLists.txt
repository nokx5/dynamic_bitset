cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

set(PROJECT_VERSION "0.0.0")

project(
  "interview_dynamic_bitset"
  LANGUAGES C CXX
  VERSION "${PROJECT_VERSION}"
  DESCRIPTION "CPP Dynamic Bitset")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# ##############################################################################
# OPTIONS
# ##############################################################################

option(PROJECT_TESTS "Build Cpp Tests" ON)
option(PROJECT_SANDBOX "Build Project Sandbox" ON)
option(PROJECT_DOCUMENTATION "Build Project Documentation" OFF)

# ##############################################################################
# FLAGS
# ##############################################################################

add_compile_options(
  "-Wall" "-Wpedantic" "-Wextra" "-fexceptions"
  "$<$<CONFIG:DEBUG>:-O0;-g3;-ggdb>" "$<$<CONFIG:RELEASE>:-O3;-mfma;-mavx>")

# ##############################################################################
# FIND PACKAGES
# ##############################################################################
# * Boost
find_package(
  Boost REQUIRED
  COMPONENTS filesystem system program_options unit_test_framework
  REQUIRED)
include_directories(SYSTEM ${Boost_INCLUDE_DIR})

# ##############################################################################
# INCLUDE
# ##############################################################################
include_directories(${PROJECT_SOURCE_DIR}/src ${PROJECT_BINARY_DIR})

# ##############################################################################
# PROJECT
# ##############################################################################
add_subdirectory(src)

# ##############################################################################
# TESTS and miscelaneous
# ##############################################################################
if(${PROJECT_TESTS})
  include(CTest)
  enable_testing()
  add_subdirectory(tests/unit)
endif()
if(${PROJECT_SANDBOX})
  add_subdirectory(tests/sandbox)
endif()
