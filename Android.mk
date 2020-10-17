LOCAL_PATH := $(call my-dir)

ifneq ($(filter xt925_jbbl,$(TARGET_DEVICE)),)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
