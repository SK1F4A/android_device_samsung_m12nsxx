# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m12nsxx/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/m12nsxx/recovery/root,recovery/root)

# Device identifier
PRODUCT_RELEASE_NAME := m12nsxx
PRODUCT_DEVICE := m12nsxx
PRODUCT_NAME := twrp_m12nsxx
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy M12
PRODUCT_MANUFACTURER := samsung

