# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e610/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := full_e610
PRODUCT_DEVICE := e610
PRODUCT_BRAND := LGE
PRODUCT_MODEL := e610
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="lge/m4_open_eu/m4:4.1.2/JZO54K/E61020c-EUR-XX.1367460723:user/release-keys" \
    PRIVATE_BUILD_DESC="m4_open_eu-user 4.1.2 JZO54K E61020c-EUR-XX.1367460723 release-keys"
