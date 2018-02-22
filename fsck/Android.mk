LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fsck.exfat
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64
LOCAL_SRC_FILES = main.c
LOCAL_C_INCLUDES += $(LOCAL_PATH) \
	external/exfat/libexfat
LOCAL_SHARED_LIBRARIES := libexfat
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := libexfat_fsck_static
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64 -Dmain=fsck_exfat_main
LOCAL_SRC_FILES = main.c
LOCAL_C_INCLUDES += $(LOCAL_PATH) \
	external/exfat/libexfat
LOCAL_STATIC_LIBRARIES := libexfat_static
include $(BUILD_STATIC_LIBRARY)
