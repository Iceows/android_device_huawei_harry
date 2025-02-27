#!/bin/bash
echo ""
echo "LineageOS 20.x dump blob for Harry Mate 10 lite"
echo "please put *.img in raw format here before start"
echo "Executing in 5 seconds - CTRL-C to exit"
echo ""
echo "To generate proprietary files"
echo "cd dump && find $PWD -type f | sort > harry-files.txt"
echo ""
echo "The extract script use tidy to clean Huawei XML files, so please install it before"
echo ""
sleep 5

echo "Dump file from phone"
#rm -rf dump/
#mkdir dump/

#adb pull /system_root/system dump/
#adb pull /mnt/vendor dump/
#adb pull /product dump/
#adb pull /mnt/odm dump/
#adb pull /preavs dump/
#adb pull /preas dump/

echo "Reset owner"
new_owner=iceows
sudo chown -R $new_owner:$new_owner ./dump/*

echo "Start extraction"
sleep 5
sudo ./extract-files.sh hry ./dump/ > dump.log

echo "Reset owner"
sudo chown -R $(id -u):$(id -g) ./../../../vendor/huawei/*

echo "Umount all"
sleep 5


#rm -rf dump/system/
#rm -rf dump/vendor/
#rm -rf dump/product/
#rm -rf dump/odm/

