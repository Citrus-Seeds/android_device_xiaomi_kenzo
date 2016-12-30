#
# Copyright (C) 2016 The CyanogenMod Project
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
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/kenzo/overlay

# call the proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/kenzo/kenzo-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/xiaomi/kenzo/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    device/xiaomi/kenzo/audio/mixer_paths.xml:system/etc/mixer_paths_wcd9326.xml

# Input
PRODUCT_COPY_FILES += \
    device/xiaomi/kenzo/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

PRODUCT_COPY_FILES += \
    device/xiaomi/kenzo/keylayout/Atmel_maXTouch_Touchscreen.kl:system/usr/keylayout/Atmel_maXTouch_Touchscreen.kl \
    device/xiaomi/kenzo/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/xiaomi/kenzo/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/xiaomi/kenzo/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl:system/usr/keylayout/msm8976-tashalite-snd-card_Button_Jack.kl \
    device/xiaomi/kenzo/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Sensors
PRODUCT_COPY_FILES += \
    device/xiaomi/kenzo/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    device/xiaomi/kenzo/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/xiaomi/kenzo/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Inherit from msm8956-common
$(call inherit-product, device/xiaomi/msm8956-common/msm8956.mk)
