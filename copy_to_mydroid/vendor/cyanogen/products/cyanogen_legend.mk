# Inherit AOSP device configuration for legend.
$(call inherit-product, device/htc/legend/full_legend.mk)

CYANOGEN_WITH_GOOGLE := true
PRODUCT_SPECIFIC_DEFINES += DEFAULT_LAUNCHER=true
WITH_JIT := true
JS_ENGINE := jsc

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_legend
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := legend
PRODUCT_MODEL := HTC Legend
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=FRF91 PRODUCT_NAME=legend TARGET_BUILD_TYPE=userdebug
#PRIVATE_BUILD_DESC="legend-user 2.2 FRF91 42745 release-keys"

# Build Kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=device/htc/legend/kernel

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-Legend
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.0.0-Legend-test0
endif

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/legend/media/bootanimation.zip:system/media/bootanimation.zip
