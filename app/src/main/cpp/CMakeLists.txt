cmake_minimum_required(VERSION 3.4.1)

set(CMAKE_BUILD_TYPE "Release")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++11 -fopenmp -fexceptions -frtti
                      -DBLAS=open
                      USE_THREAD=1 NUM_THREADS=8 USE_OPENMP=1")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

ADD_DEFINITIONS(-DEGL_EGLEXT_PROTOTYPES)
ADD_DEFINITIONS(-DGL_GLEXT_PROTOTYPES)
ADD_DEFINITIONS(-DCPU_ONLY)
#ADD_DEFINITIONS(-DUSE_OPENMP)
ADD_DEFINITIONS(-DUSE_LMDB)
ADD_DEFINITIONS(-DHAVE_JPEG)



#add_library(lib_caffe SHARED IMPORTED)
#set_target_properties(lib_caffe PROPERTIES IMPORTED_LOCATION
#    ${CMAKE_CURRENT_SOURCE_DIR}/../jniLibs/${ANDROID_ABI}/libcaffe.so)

add_library(lib_gflags STATIC IMPORTED)
set_target_properties(lib_gflags PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/gflags/lib/libgflags.a)

add_library(lib_glog STATIC IMPORTED)
set_target_properties(lib_glog PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/glog/lib/libglog.a)

add_library(lib_lmdb STATIC IMPORTED)
set_target_properties(lib_lmdb PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/lmdb/lib/liblmdb.a)

add_library(lib_protobuf STATIC IMPORTED)
set_target_properties(lib_protobuf PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/protobuf/lib/libprotobuf.a)

add_library(lib_boost_atomic STATIC IMPORTED)
set_target_properties(lib_boost_atomic PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_atomic.a)

add_library(lib_boost_date_time STATIC IMPORTED)
set_target_properties(lib_boost_date_time PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_date_time.a)

add_library(lib_boost_filesystem STATIC IMPORTED)
set_target_properties(lib_boost_filesystem PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_filesystem.a)

add_library(lib_boost_iostreams STATIC IMPORTED)
set_target_properties(lib_boost_iostreams PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_iostreams.a)

add_library(lib_boost_math STATIC IMPORTED)
set_target_properties(lib_boost_math PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_math.a)

add_library(lib_boost_program_options STATIC IMPORTED)
set_target_properties(lib_boost_program_options PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_program_options.a)

add_library(lib_boost_random STATIC IMPORTED)
set_target_properties(lib_boost_random PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_random.a)

add_library(lib_boost_regex STATIC IMPORTED)
set_target_properties(lib_boost_regex PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_regex.a)

add_library(lib_boost_signals STATIC IMPORTED)
set_target_properties(lib_boost_signals PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_signals.a)

add_library(lib_boost_system STATIC IMPORTED)
set_target_properties(lib_boost_system PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_system.a)

add_library(lib_boost_thread STATIC IMPORTED)
set_target_properties(lib_boost_thread PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/boost/lib/libboost_thread.a)

add_library(lib_openblas STATIC IMPORTED)
set_target_properties(lib_openblas PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/openblas/lib/libopenblas_armv8p-r0.2.18.a)

add_library(lib_IlmImf STATIC IMPORTED)
set_target_properties(lib_IlmImf PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/3rdparty/libs/arm64-v8a/libIlmImf.a)

add_library(lib_libjasper STATIC IMPORTED)
set_target_properties(lib_libjasper PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/3rdparty/libs/arm64-v8a/liblibjasper.a)

add_library(lib_libjpeg STATIC IMPORTED)
set_property(TARGET lib_libjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lib_libjpeg PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
    IMPORTED_LOCATION_RELEASE
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/3rdparty/libs/arm64-v8a/liblibjpeg.a)


add_library(lib_libpng STATIC IMPORTED)
set_target_properties(lib_libpng PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/3rdparty/libs/arm64-v8a/liblibpng.a)

add_library(lib_libtiff STATIC IMPORTED)
set_target_properties(lib_libtiff PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/3rdparty/libs/arm64-v8a/liblibtiff.a)

add_library(lib_libwebp STATIC IMPORTED)
set_target_properties(lib_libwebp PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/3rdparty/libs/arm64-v8a/liblibwebp.a)

add_library(lib_opencv_calib3d STATIC IMPORTED)
set_target_properties(lib_opencv_calib3d PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_calib3d.a)

add_library(lib_opencv_core STATIC IMPORTED)
set_target_properties(lib_opencv_core PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_core.a)

add_library(lib_opencv_features2d STATIC IMPORTED)
set_target_properties(lib_opencv_features2d PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_features2d.a)

add_library(lib_opencv_flann STATIC IMPORTED)
set_target_properties(lib_opencv_flann PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_flann.a)

add_library(lib_opencv_highgui STATIC IMPORTED)
set_target_properties(lib_opencv_highgui PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_highgui.a)

add_library(lib_opencv_imgcodecs STATIC IMPORTED)
set_target_properties(lib_opencv_imgcodecs PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_imgcodecs.a)

add_library(lib_opencv_imgproc STATIC IMPORTED)
set_target_properties(lib_opencv_imgproc PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_imgproc.a)

add_library(lib_opencv_ml STATIC IMPORTED)
set_target_properties(lib_opencv_ml PROPERTIES IMPORTED_LOCATION
    ${CMAKE_SOURCE_DIR}/android_lib/opencv/sdk/native/libs/arm64-v8a/libopencv_ml.a)


add_library( caffe SHARED
            caffe/src/caffe/layers/absval_layer.cpp
            caffe/src/caffe/layers/accuracy_layer.cpp
            caffe/src/caffe/layers/argmax_layer.cpp
            caffe/src/caffe/layers/base_conv_layer.cpp
            caffe/src/caffe/layers/base_data_layer.cpp
            caffe/src/caffe/layers/batch_norm_layer.cpp
            caffe/src/caffe/layers/batch_reindex_layer.cpp
            caffe/src/caffe/layers/bias_layer.cpp
            caffe/src/caffe/layers/bnll_layer.cpp
            caffe/src/caffe/layers/concat_layer.cpp
            caffe/src/caffe/layers/contrastive_loss_layer.cpp
            caffe/src/caffe/layers/conv_layer.cpp
            caffe/src/caffe/layers/crop_layer.cpp
            caffe/src/caffe/layers/cudnn_conv_layer.cpp
            caffe/src/caffe/layers/cudnn_lcn_layer.cpp
            caffe/src/caffe/layers/cudnn_lrn_layer.cpp
            caffe/src/caffe/layers/cudnn_pooling_layer.cpp
            caffe/src/caffe/layers/cudnn_relu_layer.cpp
            caffe/src/caffe/layers/cudnn_sigmoid_layer.cpp
            caffe/src/caffe/layers/cudnn_softmax_layer.cpp
            caffe/src/caffe/layers/cudnn_tanh_layer.cpp
            caffe/src/caffe/layers/data_layer.cpp
            caffe/src/caffe/layers/deconv_layer.cpp
            caffe/src/caffe/layers/dropout_layer.cpp
            caffe/src/caffe/layers/dummy_data_layer.cpp
            caffe/src/caffe/layers/eltwise_layer.cpp
            caffe/src/caffe/layers/elu_layer.cpp
            caffe/src/caffe/layers/embed_layer.cpp
            caffe/src/caffe/layers/euclidean_loss_layer.cpp
            caffe/src/caffe/layers/exp_layer.cpp
            caffe/src/caffe/layers/filter_layer.cpp
            caffe/src/caffe/layers/flatten_layer.cpp
            caffe/src/caffe/layers/hdf5_data_layer.cpp
            caffe/src/caffe/layers/hdf5_output_layer.cpp
            caffe/src/caffe/layers/hinge_loss_layer.cpp
            caffe/src/caffe/layers/im2col_layer.cpp
            caffe/src/caffe/layers/image_data_layer.cpp
            caffe/src/caffe/layers/infogain_loss_layer.cpp
            caffe/src/caffe/layers/inner_product_layer.cpp
            caffe/src/caffe/layers/input_layer.cpp
            caffe/src/caffe/layers/log_layer.cpp
            caffe/src/caffe/layers/loss_layer.cpp
            caffe/src/caffe/layers/lrn_layer.cpp
            caffe/src/caffe/layers/lstm_layer.cpp
            caffe/src/caffe/layers/lstm_unit_layer.cpp
            caffe/src/caffe/layers/memory_data_layer.cpp
            caffe/src/caffe/layers/multinomial_logistic_loss_layer.cpp
            caffe/src/caffe/layers/mvn_layer.cpp
            caffe/src/caffe/layers/neuron_layer.cpp
            caffe/src/caffe/layers/parameter_layer.cpp
            caffe/src/caffe/layers/pooling_layer.cpp
            caffe/src/caffe/layers/power_layer.cpp
            caffe/src/caffe/layers/prelu_layer.cpp
            caffe/src/caffe/layers/recurrent_layer.cpp
            caffe/src/caffe/layers/reduction_layer.cpp
            caffe/src/caffe/layers/relu_layer.cpp
            caffe/src/caffe/layers/reshape_layer.cpp
            caffe/src/caffe/layers/rnn_layer.cpp
            caffe/src/caffe/layers/scale_layer.cpp
            caffe/src/caffe/layers/sigmoid_cross_entropy_loss_layer.cpp
            caffe/src/caffe/layers/sigmoid_layer.cpp
            caffe/src/caffe/layers/silence_layer.cpp
            caffe/src/caffe/layers/slice_layer.cpp
            caffe/src/caffe/layers/softmax_layer.cpp
            caffe/src/caffe/layers/softmax_loss_layer.cpp
            caffe/src/caffe/layers/split_layer.cpp
            caffe/src/caffe/layers/spp_layer.cpp
            caffe/src/caffe/layers/tanh_layer.cpp
            caffe/src/caffe/layers/threshold_layer.cpp
            caffe/src/caffe/layers/tile_layer.cpp
            caffe/src/caffe/layers/window_data_layer.cpp
            caffe/build/include/caffe/proto/caffe.pb.cc
            caffe/src/caffe/solvers/adadelta_solver.cpp
            caffe/src/caffe/solvers/adagrad_solver.cpp
            caffe/src/caffe/solvers/adam_solver.cpp
            caffe/src/caffe/solvers/nesterov_solver.cpp
            caffe/src/caffe/solvers/rmsprop_solver.cpp
            caffe/src/caffe/solvers/sgd_solver.cpp
            caffe/src/caffe/util/benchmark.cpp
            caffe/src/caffe/util/blocking_queue.cpp
            caffe/src/caffe/util/cudnn.cpp
            caffe/src/caffe/util/db.cpp
            caffe/src/caffe/util/db_leveldb.cpp
            caffe/src/caffe/util/db_lmdb.cpp
            caffe/src/caffe/util/hdf5.cpp
            caffe/src/caffe/util/im2col.cpp
            caffe/src/caffe/util/insert_splits.cpp
            caffe/src/caffe/util/io.cpp
            caffe/src/caffe/util/math_functions.cpp
            caffe/src/caffe/util/signal_handler.cpp
            caffe/src/caffe/util/upgrade_proto.cpp
            caffe/src/caffe/blob.cpp
            caffe/src/caffe/common.cpp
            caffe/src/caffe/data_reader.cpp
            caffe/src/caffe/data_transformer.cpp
            caffe/src/caffe/internal_thread.cpp
            caffe/src/caffe/layer.cpp
            caffe/src/caffe/layer_factory.cpp
            caffe/src/caffe/net.cpp
            caffe/src/caffe/parallel.cpp
            caffe/src/caffe/solver.cpp
            caffe/src/caffe/syncedmem.cpp
            #OpenBLAS/lapack-netlib/CBLAS/src/cblas_sdot.c
            )

target_include_directories(caffe PRIVATE
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/openblas/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/caffe/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/boost/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/gflags/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/glog/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/glog/include/glog
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/lmdb/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/protobuf/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/opencv/sdk/native/jni/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/caffe/src
                          ${CMAKE_CURRENT_SOURCE_DIR}/caffe/build/include/caffe/proto
                          )

target_link_libraries(caffe
                      log
                      z
                      lib_gflags
                      lib_glog
                      lib_lmdb
                      lib_protobuf
                      lib_boost_atomic
                      lib_boost_date_time
                      lib_boost_filesystem
                      lib_boost_iostreams
                      lib_boost_math
                      lib_boost_program_options
                      lib_boost_random
                      lib_boost_regex
                      lib_boost_signals
                      lib_boost_system
                      lib_boost_thread
                      lib_openblas
                      lib_IlmImf
                      lib_libjasper
                      lib_libjpeg
                      lib_libpng
                      lib_libtiff
                      lib_libwebp
                      lib_opencv_calib3d
                      lib_opencv_core
                      lib_opencv_features2d
                      lib_opencv_flann
                      lib_opencv_highgui
                      lib_opencv_imgcodecs
                      lib_opencv_imgproc
                      lib_opencv_ml
                      )


#########################################################

add_library( caffe_jni SHARED
            caffe/android/caffe_jni.cpp
            caffe/android/caffe_mobile.cpp)

target_include_directories(caffe_jni PRIVATE
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/openblas/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/caffe/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/boost/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/gflags/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/glog/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/protobuf/include
                          ${CMAKE_CURRENT_SOURCE_DIR}/android_lib/opencv/sdk/native/jni/include )

target_link_libraries(caffe_jni
                    log
                    caffe
                    z)


