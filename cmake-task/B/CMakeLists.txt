cmake_minimum_required(VERSION 2.8)

project(lib)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")

set(SOURCES_LIB lib.cpp)

add_library(lib ${SOURCES_LIB})
