$(call inherit-product, device/samsung/celoxhd/full_celoxhd.mk)

# Release name
PRODUCT_RELEASE_NAME := i757m

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

PRODUCT_NAME := slim_celoxhd
PRODUCT_DEVICE := celoxhd

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I757M TARGET_DEVICE=SGH-I757M BUILD_FINGERPRINT="samsung/SGH-I757M/SGH-I757M:4.3.1/JLS36I/UGMC5:user/release-keys" PRIVATE_BUILD_DESC="SGH-I757M-user 4.3.1 JLS36I UGMC5 release-keys"
