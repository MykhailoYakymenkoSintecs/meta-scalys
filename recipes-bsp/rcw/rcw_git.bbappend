FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

LIC_FILES_CHKSUM = "file://LICENSE;md5=44a0d0fad189770cc022af4ac6262cbe"

SRC_URI = "gitsm://github.com/Scalys/rcw.git;protocol=https;branch=trustbox-2412"
SRCREV = "7e3c4f9716bfd5092ad83893c60d20820309752f"

BOARD_TARGETS:trustbox-edge-101 = "tbe101"
BOARD_TARGETS:trustbox-edge-401 = "tbe401"
BOARD_TARGETS:trustbox-edge-201 = "tbe201"
