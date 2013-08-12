LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE       := 60sensors
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := 60sensors
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init.d
include $(BUILD_PREBUILT)

