DESCRIPTION = "U-boot script for booting linux kernel + root from SD card with single ext4 partition"

include u-boot-bootscript.inc

BOOT_SCRIPT = ""
BOOT_SCRIPT:trustbox-edge-101 = "tbe101-boot-mmc.cmd"
BOOT_SCRIPT:trustbox-edge-401 = "tbe401-boot-mmc.cmd"

BOOT_SCRIPT_DESC = "Boot linux from ext4 SD card"
