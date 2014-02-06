#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/celoxhd/celoxhd-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/celoxhd/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/celoxhd/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc

# Bluetooth firmware
PRODUCT_COPY_FILES += \
    device/samsung/celoxhd/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# init.d scripts
PRODUCT_COPY_FILES += \
    device/samsung/celoxhd/root/system/etc/init.d/91fixoverlays:system/etc/init.d/91fixoverlays

# Inherit from celox-common
$(call inherit-product, device/samsung/celox-common/celox-common.mk)

$(call inherit-product-if-exists, vendor/samsung/celoxhd/celoxhd-vendor.mk)
