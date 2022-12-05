# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages.
DEVICE_PATH := device/samsung/goyave

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTIMAGE := $(DEVICE_PATH)/prebuilt/dt.img # Used by mkbootimg.mk in common tree.

# Inherit from common
-include $(COMMON_PATH)/BoardConfigCommon.mk

# Recovery
TARGET_OTA_ASSERT_DEVICE := SM-T113,goyave,goyavewifi,smt113
BOARD_HAS_NO_SELECT_BUTTON := true
TW_THEME := landscape_hdpi
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
