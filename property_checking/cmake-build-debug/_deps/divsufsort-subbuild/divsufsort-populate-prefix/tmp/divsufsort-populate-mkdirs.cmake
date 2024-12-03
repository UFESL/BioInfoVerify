# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-src"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-build"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-subbuild/divsufsort-populate-prefix"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-subbuild/divsufsort-populate-prefix/tmp"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-subbuild/divsufsort-populate-prefix/src/divsufsort-populate-stamp"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-subbuild/divsufsort-populate-prefix/src"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-subbuild/divsufsort-populate-prefix/src/divsufsort-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-subbuild/divsufsort-populate-prefix/src/divsufsort-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-subbuild/divsufsort-populate-prefix/src/divsufsort-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
