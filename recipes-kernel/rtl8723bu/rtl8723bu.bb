FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SUMMARY = "Kernel module for Realtek RTL8723bu WiFi/Bluetooth USB module"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${WORKDIR}/COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

SRC_URI = "git://github.com/lwfinger/rtl8723bu.git;nobranch=1;protocol=https \
    file://0001-Concurrent-AP-mode-removed-and-power-save-mode-disab.patch \
    file://COPYING \
"
SRCREV = "af3a408d6399655b0db23c2c8720436ca725ca47"

DEPENDS = "virtual/kernel"

inherit module

S = "${WORKDIR}/git"


EXTRA_OEMAKE  = "ARCH=${ARCH} \
                 KSRC=${STAGING_KERNEL_BUILDDIR} \
                 USER_EXTRA_CFLAGS='-DCONFIG_IOCTL_CFG80211 -DRTW_USE_CFG80211_STA_EVENT' \
                "

do_compile() {
	oe_runmake
}

do_install() {
        install -d ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}
        install -m 0755 ${B}/8723bu.ko ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/8723bu.ko

        install -d ${D}${sysconfdir}/modprobe.d
        echo "blacklist rtl8xxxu" > ${D}${sysconfdir}/modprobe.d/rtl8723-blacklist.conf
}

PACKAGES += "\
    kernel-module-8723bu \
"

FILES:${PN} += "${sysconfdir}"

KERNEL_MODULE_AUTOLOAD += "8723bu"
RDEPENDS:${PN} += "linux-firmware-rtl8723"
