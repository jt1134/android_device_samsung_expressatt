# Copyright (C) 2013 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from the proprietary version
-include vendor/samsung/expressatt/BoardConfigVendor.mk

# inherit from common d2
-include device/samsung/d2-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := cyanogen_expressatt_defconfig

# Asserts
TARGET_OTA_ASSERT_DEVICE := expressatt,SGH-I437,SGH-I437P
#TARGET_BOARD_INFO_FILE ?= device/samsung/expressatt/board-info.txt

# Wifi
WIFI_BAND := 802_11_ABG
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HAVE_SAMSUNG_WIFI :=
BOARD_HAS_QCOM_WLAN := true

WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/prima_wlan.ko"
WIFI_DRIVER_MODULE_NAME := "prima_wlan"
WIFI_DRIVER_MODULE_ARG :=
WIFI_DRIVER_MODULE_AP_ARG :=
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/prima_wlan/parameters/fwpath"
WIFI_DRIVER_FW_PATH_STA :=
WIFI_DRIVER_FW_PATH_AP :=
WIFI_DRIVER_FW_PATH_P2P :=

# bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/expressatt/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/expressatt/bluetooth/vnd_expressatt.txt

# lights
TARGET_PROVIDES_LIBLIGHT := true

# camera hax
COMMON_GLOBAL_CFLAGS += -DCONFIG_MSM8960_NO_CANCEL_AUTOFOCUS
