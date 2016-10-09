#!/system/xbin/bash
mount -o remount,rw /system
[ ! -e /etc/uninstaller.d ] && mkdir /etc/uninstaller.d
echo SOFTKEYS CM13
echo Backing up build.prop...
cp /system/build.prop /system/backbuild.prop
echo qemu.hw.mainkeys=0 >> /system/build.prop
echo Notice! Recover backbuild.prop from /system to build.prop if you are experiencing issues! This message will be dismissed in 7 seconds.
sleep 7
echo Finished, rebooting...
reboot
