# Release name
PRODUCT_RELEASE_NAME := kaito

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/kaito/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kaito
PRODUCT_NAME := lineage_kaito
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris E10 Wi-Fi/3G
PRODUCT_MANUFACTURER := bq
