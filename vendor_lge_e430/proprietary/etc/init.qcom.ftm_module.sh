#!/system/bin/sh
#this script unload normal wlan module and load FTM module

setprop ctl.stop wpa_supplicant
rmmod wlan
rmmod librasdioif.ko
rmmod cfg80211.ko
/system/etc/init.qcom.sdio.sh 1
insmod /system/lib/modules/cfg80211.ko
insmod /system/lib/modules/librasdioif.ko
insmod /system/lib/modules/wlan.ko driver_mode=1 
/system/etc/init.qcom.sdio.sh 0
