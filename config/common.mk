PRODUCT_BRAND ?= dark

# DRM
PRODUCT_COPY_FILES +=  \
    vendor/dark/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:$(TARGET_COPY_OUT_VENDOR)/lib/mediadrm/libwvdrmengine.so \
    vendor/dark/prebuilt/vendor/bin/hw/android.hardware.drm@1.0-service.widevine:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.drm@1.0-service.widevine \
    vendor/dark/prebuilt/vendor/etc/init/android.hardware.drm@1.0-service.widevine.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.drm@1.0-service.widevine.rc \
    vendor/dark/prebuilt/vendor/lib/libwvhidl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libwvhidl.so

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dark/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/dark/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/dark/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    vendor/dark/prebuilt/bin/blacklist:system/addon.d/blacklist

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/dark/prebuilt/etc/sysconfig/backup.xml:system/etc/sysconfig/backup.xml

# Turbo
PRODUCT_PACKAGES += \
    Turbo \
    turbo.xml

# Common Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/dark/overlay/common

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/dark/prebuilt/bootanimation/1080/bootanimation.zip:system/media/bootanimation.zip

# SELinux
-include vendor/dark/sepolicy/sepolicy.mk

# Additional packages
-include vendor/dark/config/packages.mk

# Versioning
-include vendor/dark/config/version.mk

# AICP Themes
include packages/overlays/AICP/product_packages.mk
