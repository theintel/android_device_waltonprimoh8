# this file defines LOCAL_PATH and TARGET_DEVICE flags according to the phone model

LOCAL_PATH := $(call my-dir)

ifneq ($(filter Primo_H8,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
