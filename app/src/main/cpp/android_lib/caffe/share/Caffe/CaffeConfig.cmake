# Config file for the Caffe package.
#
# Note:
#   Caffe and this config file depends on opencv,
#   so put `find_package(OpenCV)` before searching Caffe
#   via `find_package(Caffe)`. All other lib/includes
#   dependencies are hard coded in the file
#
# After successful configuration the following variables
# will be defined:
#
#   Caffe_INCLUDE_DIRS - Caffe include directories
#   Caffe_LIBRARIES    - libraries to link against
#   Caffe_DEFINITIONS  - a list of definitions to pass to compiler
#
#   Caffe_HAVE_CUDA    - signals about CUDA support
#   Caffe_HAVE_CUDNN   - signals about cuDNN support


# OpenCV dependency (optional)

if(ON)
  if(NOT OpenCV_FOUND)
    set(Caffe_OpenCV_CONFIG_PATH "/root/Mywork/caffe-android-lib/android_lib/opencv/sdk/native/jni")
    if(Caffe_OpenCV_CONFIG_PATH)
      get_filename_component(Caffe_OpenCV_CONFIG_PATH ${Caffe_OpenCV_CONFIG_PATH} ABSOLUTE)

      if(EXISTS ${Caffe_OpenCV_CONFIG_PATH} AND NOT TARGET opencv_core)
        message(STATUS "Caffe: using OpenCV config from ${Caffe_OpenCV_CONFIG_PATH}")
        include(${Caffe_OpenCV_CONFIG_PATH}/OpenCVModules.cmake)
      endif()

    else()
      find_package(OpenCV REQUIRED)
    endif()
    unset(Caffe_OpenCV_CONFIG_PATH)
  endif()
endif()

# Compute paths
get_filename_component(Caffe_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(Caffe_INCLUDE_DIRS "/root/program/android-ndk/platforms/android-21/arch-arm64/usr/include;/root/program/android-ndk/sources/cxx-stl/gnu-libstdc++/4.9/include;/root/program/android-ndk/sources/cxx-stl/gnu-libstdc++/4.9/libs/arm64-v8a/include;/root/program/android-ndk/sources/cxx-stl/gnu-libstdc++/4.9/include/backward;/root/Mywork/caffe-android-lib/android_lib/boost/include;/root/Mywork/caffe-android-lib/android_lib/glog/include;/root/Mywork/caffe-android-lib/android_lib/gflags/include;/root/Mywork/caffe-android-lib/android_lib/protobuf/include;/root/Mywork/caffe-android-lib/android_lib/lmdb/include;/root/Mywork/caffe-android-lib/android_lib/opencv/sdk/native/jni/include/opencv;/root/Mywork/caffe-android-lib/android_lib/opencv/sdk/native/jni/include;/root/Mywork/caffe-android-lib/android_lib/openblas/include")

get_filename_component(__caffe_include "${Caffe_CMAKE_DIR}/../../include" ABSOLUTE)
list(APPEND Caffe_INCLUDE_DIRS ${__caffe_include})
unset(__caffe_include)


# Our library dependencies
if(NOT TARGET caffe AND NOT caffe_BINARY_DIR)
  include("${Caffe_CMAKE_DIR}/CaffeTargets.cmake")
endif()

# List of IMPORTED libs created by CaffeTargets.cmake
set(Caffe_LIBRARIES caffe)

# Definitions
set(Caffe_DEFINITIONS "-DCPU_ONLY;-DUSE_OPENCV;-DUSE_LMDB")

# Cuda support variables
set(Caffe_CPU_ONLY ON)
set(Caffe_HAVE_CUDA FALSE)
set(Caffe_HAVE_CUDNN FALSE)
