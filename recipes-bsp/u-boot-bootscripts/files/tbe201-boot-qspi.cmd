pfe stop
ubi part UBI
ubifsmount ubi0:boot
ubifsload $kernel_addr_r /boot/fitImage
setenv bootargs "console=ttyS0,115200 noinitrd ubi.mtd=4 root=ubi0:boot rootfstype=ubifs rw rootwait $mtdparts"
bootm $kernel_addr_r
