# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a9lte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a9lte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a9lte
PRODUCT_MODEL := SM-A920F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a9lte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a9ltexx-user 9 PPR1.180610.011 A920FXXS2BSL6 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a9ltexx/a9lte:9/PPR1.180610.011/A920FXXS2BSL6:user/release-keys
