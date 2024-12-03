# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-src"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-build"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-subbuild/sdsl-populate-prefix"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-subbuild/sdsl-populate-prefix/tmp"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-subbuild/sdsl-populate-prefix/src/sdsl-populate-stamp"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-subbuild/sdsl-populate-prefix/src"
  "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-subbuild/sdsl-populate-prefix/src/sdsl-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-subbuild/sdsl-populate-prefix/src/sdsl-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/sdsl-subbuild/sdsl-populate-prefix/src/sdsl-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
