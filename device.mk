#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.base@1.0

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# VNDK
PRODUCT_PACKAGES += \
    vndk_package

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/olive/olive-vendor.mk)
