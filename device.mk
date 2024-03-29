#
# Copyright (C) 2015 The CyanogenMod Project
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

# This file includes all definitions that apply to ALL xt926_jbbl devices, and
# are also specific to xt925_jbbl devices
#
# Everything in this directory will become public

$(call inherit-product, device/motorola/msm8960_jbbl-common/msm8960.mk)

LOCAL_PATH := device/motorola/xt925_jbbl

# xt925_jbbl specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# NFC
PRODUCT_PACKAGES += \
    nfc.msm8960

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x

# Recovery/IDC
PRODUCT_COPY_FILES += \
    device/motorola/qcom-common/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
    device/motorola/qcom-common/idc/evfwd.idc:system/usr/idc/evfwd.idc \
    device/motorola/qcom-common/idc/atmxt-i2c.idc:recovery/root/vendor/firmware/atmxt-i2c.idc \
    vendor/motorola/xt926_jbbl/proprietary/etc/firmware/atmxt-r2.tdat:recovery/root/vendor/firmware/atmxt-r2.tdat

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=312

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=9 \
    telephony.lteOnCdmaDevice=0 \
    telephony.lteOnGsmDevice=1

$(call inherit-product, device/motorola/qcom-common/keychars/keychars.mk)
$(call inherit-product, device/motorola/qcom-common/keylayout/keylayout.mk)
$(call inherit-product, device/motorola/qcom-common/modules/nfc/nfc.mk)
$(call inherit-product, vendor/motorola/xt925_jbbl/xt925_jbbl-vendor.mk)
