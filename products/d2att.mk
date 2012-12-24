## Specify phone tech before including full_phone
$(call inherit-product, vendor/aosp/config/common_phone.mk)

# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit fnv specific configurations

# Setup device specific product configuration.
PRODUCT_NAME := xylon_d2att
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2att
PRODUCT_MODEL := SGH-I747
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2att TARGET_DEVICE=d2att BUILD_FINGERPRINT="d2att-user 4.1.2 JZO54K I747UCALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2att/d2att:4.1.2/JZO54K/I747UCALEM:user/release-keys"

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/toro

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 