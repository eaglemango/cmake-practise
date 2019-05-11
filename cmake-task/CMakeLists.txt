cmake_minimum_required(VERSION 2.8)

project(cmake-practise)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")

execute_process(COMMAND python A/preparing.py)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

set(SOURCES_MAIN C/main.cpp)

add_executable(main ${SOURCES_MAIN})

add_subdirectory(B)

target_link_libraries(main lib)
