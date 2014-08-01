

# Inherit APNs list
$(call inherit-product, vendor/nosp/configs/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nosp/configs/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/hammerhead/device.mk)

PRODUCT_NAME := nosp_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/lge/hammerhead
TARGET_KERNEL_CONFIG := custom_hammerhead_defconfig
TARGET_VARIANT_CONFIG := custom_hammerhead_defconfig
TARGET_SELINUX_CONFIG := custom_hammerhead_defconfig

$(call inherit-product-if-exists, vendor/lge/hammerhead/device-vendor.mk)
