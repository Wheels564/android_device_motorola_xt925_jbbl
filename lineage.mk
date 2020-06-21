# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Media
PRODUCT_COPY_FILES += \
    device/motorola/msm8960_jbbl-common/config/media_codecs.xml:system/etc/media_codecs.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_NAME := lineage_xt925_jbbl
TARGET_VENDOR_PRODUCT_NAME := XT925_verizon
TARGET_VENDOR_DEVICE_NAME := vanquish

$(call inherit-product, device/motorola/xt925_jbbl/full_xt925_jbbl.mk)
