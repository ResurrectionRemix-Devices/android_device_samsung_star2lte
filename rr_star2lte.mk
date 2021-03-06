#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/star2lte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := star2lte
PRODUCT_NAME := rr_star2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G965F
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := G965F
PRODUCT_PDA_MODEL_VERSION := XXSBETH2
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_GMS_CLIENTID_BASE := android-samsung

#Disable debbuging
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_PACKAGES_DEBUG := false
PRODUCT_PACKAGES_DEBUG_ASAN := false

#RR
TARGET_FACE_UNLOCK_SUPPORTED := true
RR_BUILDTYPE := Official

BUILD_FINGERPRINT := samsung/star2ltexx/star2lte:10/QP1A.190711.020/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=star2ltexx \
    PRODUCT_DEVICE=star2lte \
    PRIVATE_BUILD_DESC="star2ltexx-user 10 QP1A.190711.020 $(PRODUCT_PDA_VERSION) release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)
