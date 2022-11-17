# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages.
DEVICE_PATH := device/samsung/gtel3g

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

# Inherit from common
-include $(COMMON_PATH)/BoardConfigCommon.mk

# Recovery
TARGET_OTA_ASSERT_DEVICE := SM-T561,SM-T560,gtel3g,gtelwifi,gtel3gxx,gtelwifixx,smt561,smt560
TW_THEME := portrait_hdpi
