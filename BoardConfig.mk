# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

-include vendor/htc/legend/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv5te-vfp
#TARGET_ARCH_VARIANT := armv6
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE := tiwlan0
BOARD_WLAN_TI_STA_DK_ROOT := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

#TARGET_BOOTLOADER_LIBS := \
#	libboot_board_legend \
#	libboot_arch_msm7k \
#	libboot_arch_armv6

#TARGET_BOOTLOADER_LINK_SCRIPT := \
#	hardware/msm7k/boot/boot.ld

BOARD_USES_GENERIC_AUDIO := false

BOARD_USE_HTC_LIBSENSORS := true

#BOARD_USE_LEGEND_LIBSENSORS := true

BOARD_USES_QCOM_LIBS := true


BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x12c00000

BOARD_HAVE_BLUETOOTH := true

BOARD_VENDOR_USE_AKMD := akm8973

BOARD_VENDOR_QCOM_AMSS_VERSION := 4735

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CAMERA_LIBRARIES := libcameraservice libcamera

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/legend/egl.cfg

# No authoring clock for OpenCore
BOARD_NO_PV_AUTHORING_CLOCK := true

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_htc

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

TARGET_BOOTLOADER_BOARD_NAME := legend
TARGET_OTA_ASSERT_DEVICE := legend
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=legend

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 000a0000 00020000 "misc"
# mtd1: 00460000 00020000 "recovery"
# mtd2: 00280000 00020000 "boot"
# mtd3: 0f000000 00020000 "system"
# mtd4: 02800000 00020000 "cache"
# mtd5: 0b920000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x002c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00460000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0b920000

TARGET_RECOVERY_UI_LIB := librecovery_ui_legend librecovery_ui_htc
