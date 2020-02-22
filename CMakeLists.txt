# CMakeLists.txt                                                      

cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

project("Burger Pipe" VERSION 0.1 LANGUAGES CXX)
enable_testing()

add_executable(
    brgim_pipe.t 
    include/brg/__brg/brgim_pipe.hpp
    source/brgim_pipe.t.cpp)
target_include_directories(brgim_pipe.t PRIVATE "include")

add_test(brgim_pipe_test brgim_pipe.t)
