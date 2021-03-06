LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := OpenBLAS
LOCAL_SRC_FILES := ../libopenblas.a
LOCAL_EXPORT_C_INCLUDES := ../include
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := gfortran
LOCAL_SRC_FILES := ../libgfortranbegin.a
LOCAL_EXPORT_C_INCLUDES := ../include
include $(PREBUILT_STATIC_LIBRARY)

# Define QAML library

# include $(CLEAR_VARS)
# LOCAL_MODULE := QSML
# LOCAL_SRC_FILES := ../../lib/libQSML-0.14.0.so
# LOCAL_EXPORT_C_INCLUDES := ../include
# include $(PREBUILT_SHARED_LIBRARY)


# include $(CLEAR_VARS)

# LOCAL_MODULE := BLASmark
# LOCAL_SRC_FILES := ../BLASmark.cpp
# LOCAL_SHARED_LIBRARIES := QSML

# include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := libbidmatcpu
LOCAL_SRC_FILES := ../BIDMat_CBLAS.c ../BIDMat_SPBLAS.c ../BIDMat_RAND.cpp ../BIDMat_UTILS.cpp ../BIDMat_LAPACK.c
# LOCAL_SRC_FILES := ../BIDMat_CBLAS.c ../BIDMat_SPBLAS.c ../BIDMat_RAND.cpp ../BIDMat_UTILS.cpp 
LOCAL_C_INCLUDES := include
LOCAL_CFLAGS += -fopenmp
LOCAL_LDLIBS := -lgomp
LOCAL_STATIC_LIBRARIES := OpenBLAS gfortran

include $(BUILD_SHARED_LIBRARY)


