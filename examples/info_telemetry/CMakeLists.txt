cmake_minimum_required(VERSION 3.10.2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(info_telemetry)

add_executable(info_telemetry
    info_telemetry.cpp
)

find_package(MAVSDK REQUIRED)

target_link_libraries(info_telemetry
    MAVSDK::mavsdk
)

if(NOT MSVC)
    add_compile_options(info_telemetry PRIVATE -Wall -Wextra)
else()
    add_compile_options(info_telemetry PRIVATE -WX -W2)
endif()
