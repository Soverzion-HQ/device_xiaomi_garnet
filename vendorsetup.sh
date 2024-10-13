echo 'Cloning stuffs to build for garnet'

# Clone primary tree
git clone https://github.com/Soverzion-HQ/vendor_xiaomi_garnet -b 14 vendor/xiaomi/garnet
git clone --depth=1 https://github.com/Soverzion-HQ/device_xiaomi_garnet-prebuilt -b hikari device/xiaomi/garnet-prebuilt

# Hardware Xiaomi
git clone https://github.com/Soverzion-HQ/hardware_xiaomi -b lineage-21 hardware/xiaomi
git clone https://github.com/Soverzion-HQ/vendor_xiaomi_garnet-miuicamera -b 14 vendor/xiaomi/garnet-miuicamera
rm -rf hardware/qcom-caf/sm8450/display
git clone https://github.com/Soverzion-HQ/hardware_qcom-caf_sm8450_display -b 14 hardware/qcom-caf/sm8450/display

# Export ccache to accelerate building
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 60G

echo 'Cloning completed. It's time to lunch. Miaw'
