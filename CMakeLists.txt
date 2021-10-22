cmake_minimum_required(VERSION 3.17)
project(lab_0 C)

set(CMAKE_C_STANDARD 99)
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -ansi -pedantic-errors -lm")
add_executable(lab_0 ADTStack.h main.c)