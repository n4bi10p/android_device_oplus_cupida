#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/oplus/cupida/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_cupida
PRODUCT_DEVICE := cupida
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme X7 Max 5G
PRODUCT_MANUFACTURER := realme
PRODUCT_SYSTEM_NAME := cupida
PRODUCT_SYSTEM_DEVICE := cupida

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-realme
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=cupida \
    TARGET_PRODUCT=cupida

#Matrixx
MATRIXX_MAINTAINER := N4bi10p
MATRIXX_CHIPSET := mt6893
MATRIXX_BATTERY := 4500mAh
MATRIXX_DISPLAY := 1080x2400
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true
