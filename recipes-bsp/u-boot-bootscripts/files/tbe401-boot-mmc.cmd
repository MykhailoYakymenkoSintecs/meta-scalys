env set load_addr b0000000
ext4load mmc 0:1 $load_addr /boot/fitImage
mtdparts
setenv bootargs "console=ttyS0,115200 noinitrd root=/dev/mmcblk0p1 rootfstype=ext4 rw rootwait $mtdparts"
bootm $load_addr
