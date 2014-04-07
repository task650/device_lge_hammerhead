#
# Copyright 2013 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Extra Apps and files
PRODUCT_COPY_FILES += \
    vendor/lge/hammerhead/Alert-SonarMerge.mp3:system/media/audio/notifications/Alert-SonarMerge.mp3 \
    vendor/lge/hammerhead/CyanPing.ogg:system/media/audio/notifications/CyanPing.ogg \
    vendor/lge/hammerhead/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
    vendor/lge/hammerhead/apple_smsreceived.ogg:system/media/audio/notifications/apple_smsreceived.ogg \
    vendor/lge/hammerhead/IphoneCellSoundMerge.mp3:system/media/audio/ringtones/IphoneCellSoundMerge.mp3 \
    vendor/aokp/prebuilt/common/app/NovaLauncher.apk:system/app/NovaLauncher.apk \
    vendor/aokp/prebuilt/common/etc/init.d/00frandom:system/etc/init.d/00frandom

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := full_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on HammerHead
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, device/lge/hammerhead/device.mk)
$(call inherit-product-if-exists, vendor/lge/hammerhead/hammerhead-vendor.mk)
