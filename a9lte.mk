#
# Copyright (C) 2021 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit LineageOS base configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit your device-specific configuration
$(call inherit-product, $(LOCAL_DIR)/device.mk)

# Device identity
PRODUCT_DEVICE := a9lte
PRODUCT_NAME := lineage_a9lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A920F
PRODUCT_MANUFACTURER := samsung

# Assert device
TARGET_OTA_ASSERT_DEVICE := a9lte
