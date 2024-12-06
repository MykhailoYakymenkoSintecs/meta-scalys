DESCRIPTION = "U-boot script for booting linux kernel + root from UBIFS"

include u-boot-bootscript.inc

BOOT_SCRIPT = ""
BOOT_SCRIPT:trustbox-edge-101 = "tbe101-boot-qspi.cmd"
BOOT_SCRIPT:trustbox-edge-401 = "tbe401-boot-qspi.cmd"

BOOT_SCRIPT_DESC = "Boot linux from UBIFS"
