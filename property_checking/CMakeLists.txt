cmake_minimum_required(VERSION 3.26)
project(rapid_check)

set(CMAKE_CXX_STANDARD 17)

################################################################################
# Thirdparty

include(FetchContent)
add_subdirectory(rapidcheck)

# sdsl
FetchContent_Declare(
        sdsl
        GIT_REPOSITORY https://github.com/simongog/sdsl-lite
)
FetchContent_GetProperties(sdsl)
if(NOT sdsl_POPULATED)
    FetchContent_Populate(sdsl)
    set(GENERATE_DOC OFF CACHE BOOL "Do not generate doxygen for sdsl-lite")
    add_subdirectory(${sdsl_SOURCE_DIR} ${sdsl_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()

# divsuffsort
FetchContent_Declare(
        divsufsort
        GIT_REPOSITORY https://github.com/simongog/libdivsufsort.git
        GIT_TAG        2.0.1
)
FetchContent_GetProperties(divsufsort)
if(NOT divsufsort_POPULATED)
    FetchContent_Populate(divsufsort)
    set(BUILD_SHARED_LIBS OFF CACHE BOOL "Do not build a shared library for libdivsufsort")
    set(BUILD_EXAMPLES OFF CACHE BOOL "Do not build libdivsufsort example")
    set(BUILD_DIVSUFSORT64 ON CACHE BOOL "Build libdivsufsort in 64-bits mode")
    add_subdirectory(${divsufsort_SOURCE_DIR} ${divsufsort_BINARY_DIR} EXCLUDE_FROM_ALL)
    target_include_directories(divsufsort PUBLIC "${divsufsort_BINARY_DIR}/include")
    target_include_directories(divsufsort64 PUBLIC "${divsufsort_BINARY_DIR}/include")
endif()

add_executable(rapid_check main.cpp)
target_link_libraries(rapid_check sdsl divsufsort divsufsort64 rapidcheck)
