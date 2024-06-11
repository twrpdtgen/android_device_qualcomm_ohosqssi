#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ohosqssi device
$(call inherit-product, device/qualcomm/ohosqssi/device.mk)

PRODUCT_DEVICE := ohosqssi
PRODUCT_NAME := omni_ohosqssi
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := ohosqssi system image for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ohosqssi-user 12 SKQ1.220804.001 eng.root.20230321.234243 dev-keys"

BUILD_FINGERPRINT := Huawei/ohosqssi/ohosqssi:12/SKQ1.220804.001/root03212350:user/dev-keys
