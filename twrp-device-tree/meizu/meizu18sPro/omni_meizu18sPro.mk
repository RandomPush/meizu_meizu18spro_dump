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

# Inherit from meizu18sPro device
$(call inherit-product, device/meizu/meizu18sPro/device.mk)

PRODUCT_DEVICE := meizu18sPro
PRODUCT_NAME := omni_meizu18sPro
PRODUCT_BRAND := meizu
PRODUCT_MODEL := MEIZU 18s Pro
PRODUCT_MANUFACTURER := meizu

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lahaina-user 11 RKQ1.210907.001 1646967795 release-keys"

BUILD_FINGERPRINT := qti/lahaina/lahaina:11/RKQ1.210907.001/1646967795:user/release-keys
