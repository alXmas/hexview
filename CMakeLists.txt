cmake_minimum_required(VERSION 3.15)

project(Hexview LANGUAGES C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(mycat mycat.c)

target_compile_options(hexview PRIVATE -Wall -Wextra -Wpedantic -Werror)
