# TWRP device tree for Samsung M12 aka m12nsxx

## How to build
This was tested and it's fully compatible with [minimal manifest twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp).
1. Set up the build environment following instructions from [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started).
2. In the root folder of cloned repo you need to clone the device tree:
```bash
git clone -b master https://github.com/VThang51/android_device_samsung_m12nsxx.git device/samsung/m12nsxx
```
3. To build:
```bash
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_m12nsxx-eng
mka recoveryimage
```
Or use seamless command:
```bash
export ALLOW_MISSING_DEPENDENCIES=true && . build/envsetup.sh && lunch twrp_m12nsxx-eng && mka recoveryimage
```
