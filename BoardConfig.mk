# Copyright (C) 2016 The Android Open Source Project
#               2017 The LineageOS Project
#                    TeamHacklG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Define device specific variables to msm7x27a-common
LGE_MSM7X27A_DEVICE := e610
LGE_MSM7X27A_GENERATION := 1
LGE_MSM7X27A_PRODUCT := m4

# inherit from the proprietary things
include device/lge/msm7x27a-common/BoardConfigCommon.mk
include vendor/lge/e610/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := lineage_m4_nonfc_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 589299712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2920577761

# Recovery
DEVICE_RESOLUTION := 320x480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
#RECOVERY_VARIANT := omni
#TW_EXTERNAL_STORAGE_PATH := "/external sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_FLASH_FROM_STORAGE := true
#TW_NO_CPU_TEMP := true
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# Unified Device
TARGET_UNIFIED_DEVICE := true
TARGET_OTA_ASSERT_DEVICE := E610,e610,E612,e612,E617,e617,m4

# Set Device in init based on baseband
TARGET_INIT_VENDOR_LIB := libinit_m4
TARGET_LIBINIT_DEFINES_FILE := device/lge/e610/init/init_m4.cpp
