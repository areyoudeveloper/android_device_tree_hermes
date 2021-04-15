LOCAL_PATH := $(call my-dir)

#
# Prebuilt APKs
#

include $(CLEAR_VARS)
LOCAL_MODULE := SpectrumSuper
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

#
# Copy shell script
#
include $(CLEAR_VARS)
LOCAL_MODULE := init.spectrum
LOCAL_SRC_FILES := SpectrumSuper/$(LOCAL_MODULE).sh
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_INIT_RC := SpectrumSuper/$(LOCAL_MODULE).rc
LOCAL_MODULE_SUFFIX := .sh
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

#
# Copy .xml permissions file to /system/etc/permissions
#
include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-com.hq.spectrumsuper
LOCAL_SRC_FILES := SpectrumSuper/$(LOCAL_MODULE).xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_MODULE_SUFFIX := .xml
include $(BUILD_PREBUILT)