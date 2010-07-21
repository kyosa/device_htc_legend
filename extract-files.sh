#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=legend

mkdir -p ../../../vendor/htc/$DEVICE/proprietary

adb wait-for-devices

adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary/akmd
adb pull /system/bin/bluetoothd ../../../vendor/htc/$DEVICE/proprietary/bluetoothd
adb pull /system/bin/bma150_usr ../../../vendor/htc/$DEVICE/proprietary/bma150_usr
adb pull /system/bin/bootcomplete ../../../vendor/htc/$DEVICE/proprietary/bootcomplete
adb pull /system/bin/btipsd ../../../vendor/htc/$DEVICE/proprietary/btipsd
adb pull /system/bin/btipsd_cli ../../../vendor/htc/$DEVICE/proprietary/btipsd_cli
adb pull /system/bin/mmclient ../../../vendor/htc/$DEVICE/proprietary/mmclient
adb pull /system/bin/monitorMTD ../../../vendor/htc/$DEVICE/proprietary/monitorMTD
adb pull /system/bin/netsharing ../../../vendor/htc/$DEVICE/proprietary/netsharing
adb pull /system/bin/rsync ../../../vendor/htc/$DEVICE/proprietary/rsync
adb pull /system/bin/shutdown ../../../vendor/htc/$DEVICE/proprietary/shutdown
adb pull /system/bin/tiwlan_cu ../../../vendor/htc/$DEVICE/proprietary/tiwlan_cu
adb pull /system/bin/tiwlan_loader ../../../vendor/htc/$DEVICE/proprietary/tiwlan_loader
adb pull /system/xbin/wireless_modem ../../../vendor/htc/$DEVICE/proprietary/wireless_modem
adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/htc/$DEVICE/proprietary/01_qcomm_omx.cfg
adb pull /system/etc/AudioFilter.csv ../../../vendor/htc/$DEVICE/proprietary/AudioFilter.csv
adb pull /system/etc/AudioPara4.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPara4.csv
adb pull /system/etc/AudioPara4_WB.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPara4_WB.csv
adb pull /system/etc/AudioPara_HTC_FR.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPara_HTC_FR.csv
adb pull /system/etc/AudioPara_HTC_WB_FR.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPara_HTC_WB_FR.csv
adb pull /system/etc/AudioPreProcess.csv ../../../vendor/htc/$DEVICE/proprietary/AudioPreProcess.csv
adb pull /system/etc/firmware/wl1271.bin ../../../vendor/htc/$DEVICE/proprietary/wl1271.bin
adb pull /system/etc/firmware/avpr.bts ../../../vendor/htc/$DEVICE/proprietary/avpr.bts
adb pull /system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fmc_init_1273.2.bts
adb pull /system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/htc/$DEVICE/proprietary/fm_rx_init_1273.2.bts
adb pull /system/etc/firmware/vac_config.ini ../../../vendor/htc/$DEVICE/proprietary/vac_config.ini
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pm4.fw
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary/yamato_pfp.fw
adb pull /system/etc/firmware/tiinit_7.2.31.bts ../../../vendor/htc/$DEVICE/proprietary/tiinit_7.2.31.bts
adb pull /system/etc/wifi/Fw1273_CHIP.bin ../../../vendor/htc/$DEVICE/proprietary/Fw1273_CHIP.bin
adb pull /system/etc/wifi/tiwlan.ini ../../../vendor/htc/$DEVICE/proprietary/tiwlan.ini
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/htc/$DEVICE/proprietary/wpa_supplicant.conf
adb pull /system/etc/pvasflocal.cfg ../../../vendor/htc/$DEVICE/proprietary/pvasflocal.cfg
adb pull /system/usr/keychars/legend-keypad.kcm.bin ../../../vendor/htc/$DEVICE/proprietary/legend-keypad.kcm.bin
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libEGL_adreno200.so
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/htc/$DEVICE/proprietary/libGLES_android.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary/libGLESv2_adreno200.so
adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/copybit.msm7k.so
adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/htc/$DEVICE/proprietary/gralloc.msm7k.so
adb pull /system/lib/hw/sensors.legend.so ../../../vendor/htc/$DEVICE/proprietary/sensors.legend.so
adb pull /system/lib/libOmxCore.so ../../../vendor/htc/$DEVICE/proprietary/libOmxCore.so
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxH264Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/htc/$DEVICE/proprietary/libOmxMpeg4Dec.so
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/htc/$DEVICE/proprietary/libOmxVidEnc.so
adb pull /system/lib/libaes.so ../../../vendor/htc/$DEVICE/proprietary/libaes.so
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary/libaudioeq.so
adb pull /system/lib/libcurl.so ../../../vendor/htc/$DEVICE/proprietary/libcurl.so
adb pull /system/lib/libflashlite.so ../../../vendor/htc/$DEVICE/proprietary/libflashlite.so
adb pull /system/lib/libflashsnddec.so ../../../vendor/htc/$DEVICE/proprietary/libflashsnddec.so
adb pull /system/lib/libflsaplayerlib.so ../../../vendor/htc/$DEVICE/proprietary/libflsaplayerlib.so
adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary/libgps.so
adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary/libgsl.so
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary/libhtc_acoustic.so
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary/libhtc_ril.so
adb pull /system/lib/libhtcbitmapfactory.so ../../../vendor/htc/$DEVICE/proprietary/libhtcbitmapfactory.so
adb pull /system/lib/libiconv.so ../../../vendor/htc/$DEVICE/proprietary/libiconv.so
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/htc/$DEVICE/proprietary/libmm-adspsvc.so
adb pull /system/lib/libmmclient.so ../../../vendor/htc/$DEVICE/proprietary/libmmclient.so
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary/liboemcamera.so
adb pull /system/lib/libomx_wmadec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary/libomx_wmadec_sharedlibrary.so
adb pull /system/lib/libomx_wmvdec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary/libomx_wmvdec_sharedlibrary.so
adb pull /system/lib/libon2.so ../../../vendor/htc/$DEVICE/proprietary/libon2.so
adb pull /system/lib/libpvasfcommon.so ../../../vendor/htc/$DEVICE/proprietary/libpvasfcommon.so
adb pull /system/lib/libpvasflocalpb.so ../../../vendor/htc/$DEVICE/proprietary/libpvasflocalpb.so
adb pull /system/lib/libpvasflocalpbreg.so ../../../vendor/htc/$DEVICE/proprietary/libpvasflocalpbreg.so
adb pull /system/lib/libsiimpl.so ../../../vendor/htc/$DEVICE/proprietary/libsiimpl.so
adb pull /system/lib/libsorenson.so ../../../vendor/htc/$DEVICE/proprietary/libsorenson.so
adb pull /system/lib/libspeech.so ../../../vendor/htc/$DEVICE/proprietary/libspeech.so


chmod 755 ../../../vendor/htc/$DEVICE/proprietary/akmd
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/bluetoothd
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/bma150_usr
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/bootcomplete
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/btipsd
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/btipsd_cli
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/mmclient
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/monitorMTD
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/netsharing
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/rsync
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/shutdown
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/tiwlan_cu
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/tiwlan_loader
chmod 755 ../../../vendor/htc/$DEVICE/proprietary/wireless_modem


(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/device_$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/htc/__DEVICE__/extract-files.sh

PRODUCT_COPY_FILES := \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so \\
    device/htc/__DEVICE__/init.rc:root/init.rc

PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd:system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/bluetoothd:system/bin/bluetoothd \\
    vendor/htc/__DEVICE__/proprietary/bma150_usr:system/bin/bma150_usr \\
    vendor/htc/__DEVICE__/proprietary/bootcomplete:system/bin/bootcomplete \\
    vendor/htc/__DEVICE__/proprietary/btipsd:system/bin/btipsd \\
    vendor/htc/__DEVICE__/proprietary/btipsd_cli:system/bin/btipsd_cli \\
    vendor/htc/__DEVICE__/proprietary/mmclient:system/bin/mmclient \\
    vendor/htc/__DEVICE__/proprietary/monitorMTD:system/bin/monitorMTD \\
    vendor/htc/__DEVICE__/proprietary/netsharing:system/bin/netsharing \\
    vendor/htc/__DEVICE__/proprietary/rsync:system/bin/rsync \\
    vendor/htc/__DEVICE__/proprietary/shutdown:system/bin/shutdown \\
    vendor/htc/__DEVICE__/proprietary/tiwlan_cu:system/bin/tiwlan_cu \\
    vendor/htc/__DEVICE__/proprietary/tiwlan_loader:system/bin/tiwlan_loader \\
    vendor/htc/__DEVICE__/proprietary/wireless_modem:system/xbin/wireless_modem \\
    vendor/htc/__DEVICE__/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
    vendor/htc/__DEVICE__/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara_HTC_FR.csv:system/etc/AudioPara_HTC_FR.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPara_HTC_WB_FR.csv:system/etc/AudioPara_HTC_WB_FR.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \\
    vendor/htc/__DEVICE__/proprietary/wl1271.bin:system/etc/firmware/wl1271.bin \\
    vendor/htc/__DEVICE__/proprietary/avpr.bts:system/etc/firmware/avpr.bts \\
    vendor/htc/__DEVICE__/proprietary/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \\
    vendor/htc/__DEVICE__/proprietary/vac_config.ini:system/etc/firmware/vac_config.ini \\
    vendor/htc/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/htc/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/htc/__DEVICE__/proprietary/tiinit_7.2.31.bts:system/etc/firmware/tiinit_7.2.31.bts \\
    vendor/htc/__DEVICE__/proprietary/Fw1273_CHIP.bin:system/etc/wifi/Fw1273_CHIP.bin \\
    vendor/htc/__DEVICE__/proprietary/tiwlan.ini:system/etc/wifi/tiwlan.ini \\
    vendor/htc/__DEVICE__/proprietary/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \\
    vendor/htc/__DEVICE__/proprietary/pvasflocal.cfg:system/etc/pvasflocal.cfg \\
    vendor/htc/__DEVICE__/proprietary/legend-keypad.kcm.bin:system/usr/keychars/legend-keypad.kcm.bin \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \\
    vendor/htc/__DEVICE__/proprietary/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \\
    vendor/htc/__DEVICE__/proprietary/sensors.legend.so:system/lib/hw/sensors.legend.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxCore.so:system/lib/libOmxCore.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/htc/__DEVICE__/proprietary/libaes.so:system/lib/libaes.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libcurl.so:system/lib/libcurl.so \\
    vendor/htc/__DEVICE__/proprietary/libflashlite.so:system/lib/libflashlite.so \\
    vendor/htc/__DEVICE__/proprietary/libflashsnddec.so:system/lib/libflashsnddec.so \\
    vendor/htc/__DEVICE__/proprietary/libflsaplayerlib.so:system/lib/libflsaplayerlib.so \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:system/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/libhtcbitmapfactory.so:system/lib/libhtcbitmapfactory.so \\
    vendor/htc/__DEVICE__/proprietary/libiconv.so:system/lib/libiconv.so \\
    vendor/htc/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/htc/__DEVICE__/proprietary/libmmclient.so:system/lib/libmmclient.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libon2.so:system/lib/libon2.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasfcommon.so:system/lib/libpvasfcommon.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasflocalpb.so:system/lib/libpvasflocalpb.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasflocalpbreg.so:system/lib/libpvasflocalpbreg.so \\
    vendor/htc/__DEVICE__/proprietary/libsiimpl.so:system/lib/libsiimpl.so \\
    vendor/htc/__DEVICE__/proprietary/libsorenson.so:system/lib/libsorenson.so \\
    vendor/htc/__DEVICE__/proprietary/libspeech.so:system/lib/libspeech.so \\
EOF

./setup-makefiles.sh
