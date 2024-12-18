# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "/Users/yuhong/CLionProjects/rapid_check;/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/Applications/CLion.app/Contents/bin/cmake/mac/share/cmake-3.26/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "rapid_check built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "TGZ;TBZ2;ZIP")
set(CPACK_INSTALL_CMAKE_PROJECTS "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug;rapid_check;ALL;/")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-src/CMakeModules")
set(CPACK_NSIS_DISPLAY_NAME "rapid_check 2.0.0")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "rapid_check 2.0.0")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OBJCOPY_EXECUTABLE "/opt/homebrew/Cellar/llvm/17.0.6/bin/llvm-objcopy")
set(CPACK_OBJDUMP_EXECUTABLE "/opt/homebrew/Cellar/llvm/17.0.6/bin/llvm-objdump")
set(CPACK_OSX_SYSROOT "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "yuta.256@gmail.com")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-src/COPYING")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A lightweight suffix sorting library")
set(CPACK_PACKAGE_FILE_NAME "libdivsufsort-2.0.0-Darwin-arm64")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "rapid_check 2.0.0")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "rapid_check 2.0.0")
set(CPACK_PACKAGE_NAME "rapid_check")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Yuta Mori")
set(CPACK_PACKAGE_VERSION "2.0.0")
set(CPACK_PACKAGE_VERSION_MAJOR "2")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_READELF_EXECUTABLE "/opt/homebrew/Cellar/llvm/17.0.6/bin/llvm-readelf")
set(CPACK_RESOURCE_FILE_LICENSE "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/_deps/divsufsort-src/COPYING")
set(CPACK_RESOURCE_FILE_README "/Applications/CLion.app/Contents/bin/cmake/mac/share/cmake-3.26/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/Applications/CLion.app/Contents/bin/cmake/mac/share/cmake-3.26/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TGZ;TBZ2;ZIP")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/build/;/\\.build/;/\\.svn/;~$")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "libdivsufsort-2.0.0")
set(CPACK_SOURCE_STRIP_FILES "")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Darwin-arm64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Darwin-arm64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/yuhong/CLionProjects/rapid_check/cmake-build-debug/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
