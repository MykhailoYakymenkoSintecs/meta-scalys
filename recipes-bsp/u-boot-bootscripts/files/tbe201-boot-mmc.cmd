ext4load mmc 0:1 $load_addr /boot/fitImage
mtdparts
setenv bootargs "console=ttyS0,115200 root=/dev/mmcblk0p1 earlycon=uart8250,mmio,0x21c0500 ramdisk_size=0x2000000 default_hugepagesz=2m hugepagesz=2m hugepages=256 cma=256M $mtdparts"
bootm $load_addr
