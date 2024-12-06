FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-support-of-Trustbox-Edge-devices-TBE101-TBE401.patch"


PLATFORM:trustbox-edge-101 = "tbe101"
PLATFORM:trustbox-edge-401 = "ls1046afrwy"

RCW_FOLDER:trustbox-edge-101 ?= "trustbox"
RCW_FOLDER:trustbox-edge-401 ?= "trustbox-xl"
