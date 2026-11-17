#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

-include device/realme/RMX2061/configs/camera.mk

# Inherit from sm7125-common
include device/realme/sm7125-common/BoardConfigCommon.mk

# Inherit proprietary blobs
-include vendor/realme/RMX2061/BoardConfigVendor.mk

# Camera app policy; retain the device's factory camera HAL and calibration.
ifeq ($(TARGET_INCLUDE_OPLUS_CAMERA),true)
-include vendor/oplus/camera/profiles/rmx2061/BoardConfig.mk
endif

DEVICE_PATH := device/realme/RMX2061

# OTA assert
TARGET_OTA_ASSERT_DEVICE := RMX2061

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
