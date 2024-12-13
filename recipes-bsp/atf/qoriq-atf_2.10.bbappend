FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	file://0001-Add-support-of-Trustbox-Edge-devices-TBE101-TBE401.patch \
	file://0001-add-trustbox-201.patch \
"


PLATFORM:trustbox-edge-101 = "tbe101"
PLATFORM:trustbox-edge-401 = "ls1046afrwy"
PLATFORM:trustbox-edge-201 = "ls1028trustsom"

RCW_FOLDER:trustbox-edge-101 ?= "tbe101"
RCW_FOLDER:trustbox-edge-201 ?= "tbe201"
RCW_FOLDER:trustbox-edge-401 ?= "tbe401"

