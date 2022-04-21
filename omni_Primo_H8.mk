# Release name
PRODUCT_RELEASE_NAME := Primo_H8

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := WALTON
PRODUCT_DEVICE := Primo_H8
PRODUCT_MANUFACTURER := WALTON
PRODUCT_MODEL := Primo_H8
PRODUCT_NAME := omni_Primo_H8
