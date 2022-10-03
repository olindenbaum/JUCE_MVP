cmake_minimum_required(VERSION 3.0)
project(JUCE_Tempometer)

set(CMAKE_CXX_STANDARD 98)


add_subdirectory(${CMAKE_SOURCE_DIR}/libs/kissfft)
add_subdirectory(${CMAKE_SOURCE_DIR}/JUCE)

add_executable(JUCE_Tempometer PluginProcessor.cpp)
