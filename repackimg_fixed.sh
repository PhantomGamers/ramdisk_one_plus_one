./bin/mkbootfs ramdisk | gzip > ramdisk.gz
./bin/mkbootimg --kernel split_img/boot.img-zImage --cmdline 'console=ttyHSL0,115200,n8 androidboot.hardware=bacon user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3' --base 0x00000000 --pagesize 2048 --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --dt split_img/boot.img-dtb --ramdisk ramdisk.gz --output boot.img
