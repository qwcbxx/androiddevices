#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from msm8952_64 device
$(call inherit-product, device/readboy/msm8952_64/device.mk)

PRODUCT_DEVICE := msm8952_64
PRODUCT_NAME := omni_msm8952_64
PRODUCT_BRAND := readboy
PRODUCT_MODEL := Readboy_V60
PRODUCT_MANUFACTURER := readboy

PRODUCT_GMS_CLIENTID_BASE := android-readboy

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8952_64-user 7.1.1 NMF26F 20220323 dev-keys"

BUILD_FINGERPRINT := readboy/msm8952_64/msm8952_64:7.1.1/NMF26F/20220323:user/dev-keys
