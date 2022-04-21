LOCAL_PATH := $(call my-dir)

ifneq ($(filter PRIMO_H8,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
