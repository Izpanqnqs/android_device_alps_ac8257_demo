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

# Inherit from ac8257_demo device
$(call inherit-product, device/alps/ac8257_demo/device.mk)

PRODUCT_DEVICE := ac8257_demo
PRODUCT_NAME := omni_ac8257_demo
PRODUCT_BRAND := alps
PRODUCT_MODEL := UJC201_64
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="UJC201-M0-V1.0.09R5-240523_1418"

BUILD_FINGERPRINT := alps/full_UJC201_64/ac8257_demo:9/PPR1.180610.011/95:userdebug/test-keys
