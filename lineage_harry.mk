#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)


# Inherit from harry device
$(call inherit-product, device/huawei/harry/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := harry
PRODUCT_NAME := lineage_harry
PRODUCT_BRAND := HWHRY-H
PRODUCT_MODEL := HRY-L21
PRODUCT_MANUFACTURER := HUAWEI

# Match stock value: ro.product.board=HRY-L21
TARGET_BOOTLOADER_BOARD_NAME := HRY-L21

PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=HRY \
    PRIVATE_BUILD_DESC="HRY-L21-user 9 HONORHRY-L21 262-OVS-LGRP2 release-keys"

BUILD_FINGERPRINT := [HONOR/HRY-LX1RU/HWHRY-H:9/HONORHRY-L21/262C10:user/release-keys]
