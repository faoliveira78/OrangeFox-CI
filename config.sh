#!/bin/bash

# Device
export FOX_BRANCH="fox_12.1"
export DT_LINK="https://gitlab.com/faoliveira78/device_oneplus_cheeseburger_dumpling -b fox_12.1"

export DEVICE="OP5x5T"
export OEM="oneplus"
export DT_PATH="device/$OEM/$DEVICE"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="recoveryimage"

export OUTPUT="OrangeFox*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
    "https://github.com/faoliveira78/avatar.git misc"
)

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=faoliveira78"

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
