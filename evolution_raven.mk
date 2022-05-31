# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
WITH_GMS := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)
$(call inherit-product, device/google/raviole/device-evolution.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := evolution_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220505.002 8353555 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220505.002/8353555:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
