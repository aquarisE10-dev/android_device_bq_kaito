LOCAL_PATH := $(call my-dir)

ifneq ($(filter kaito, $(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
