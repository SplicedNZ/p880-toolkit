#!/system/bin/sh
#Lets find the correct android version
#JoinTheRealms 4/02/14

cd /data/media/tmp
touch ./log
exec >> ./log
exec 2>&1


androidVersion=`getprop ro.build.version.release`



if [ $androidVersion = "4.1.*" ];then
	cp -r /data/media/tmp/ramdisks/4.1/* /data/media/tmp/kernel/initrd.img
	echo "found 4.1.x ROM!"
fi

if [ $androidVersion = "4.2.*" ];then
	cp -r /data/media/tmp/ramdisks/4.2/* /data/media/tmp/kernel/initrd.img
	echo "found 4.2.x ROM!"
fi
	
if [ $androidVersion = "4.3.*" ];then
	cp -r /data/media/tmp/ramdisks/4.3/* /data/media/tmp/kernel/initrd.img
	echo "found 4.3.x ROM!"
fi

if [ $androidVersion = "4.4.2" ];then
	cp -r /data/media/tmp/ramdisks/4.4/* /data/media/tmp/kernel/initrd.img
	echo "found 4.4.x ROM!"
fi

cp -r ./zImages/$chsnzImg ./kernel/zImage 
su -c ./kernel/mkbootimg --kernel /data/media/tmp/kernel/zImage --ramdisk /data/media/tmp/kernel/initrd.img --output /data/media/tmp/kernel/newboot.img
su -c dd if=/data/media/tmp/kernel/newboot.img of=/dev/block/mmcblk0p2






	
