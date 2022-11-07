#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    mx_logger.sh \
    mx_log_collection.sh \
    mx_logger_dump.sh \

PRODUCT_PACKAGES += \
    fstab.samsungexynos7570 \
    init.rc \
    ueventd.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 26

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/j4lte/j4lte-vendor.mk)
