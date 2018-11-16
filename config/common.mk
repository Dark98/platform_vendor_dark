PRODUCT_BRAND ?= dark

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dark/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/dark/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/dark/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    vendor/dark/prebuilt/bin/blacklist:system/addon.d/blacklist

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/dark/prebuilt/etc/sysconfig/backup.xml:system/etc/sysconfig/backup.xml

# Common Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/dark/overlay/common

# Additional packages
-include vendor/dark/config/packages.mk

# Versioning
-include vendor/dark/config/version.mk

# AICP Themes
include packages/overlays/AICP/product_packages.mk
