echo SOFTKEYS CM13
mount -o remount,rw /system
echo qemu.hw.mainkeys=0 >> /system/build.prop