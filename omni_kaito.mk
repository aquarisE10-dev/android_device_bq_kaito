# Inherit device configuration
$(call inherit-product, device/bq/kaito/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kaito
PRODUCT_NAME := omni_kaito
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris E10
