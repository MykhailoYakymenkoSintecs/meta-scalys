SUMMARY = "Generic Scalys base image"
DESCRIPTION = "This image is meant to be used as a starting point for custom images"
LICENSE = "GPLV2"
LIC_FILES_CHKSUM = ""


require recipes-core/images/core-image-base.bb

PACKAGE_ARCH = "${MACHINE_ARCH}"

IMAGE_FSTYPES = "tar.gz ubi"
#IMAGE_FSTYPES = "tar.gz ext2.gz ext2.gz.u-boot jffs2 ubi"

IMAGE_INSTALL += "\
    kernel-image \
    kernel-devicetree \
    kernel-modules \
    \
    ${@bb.utils.contains('MACHINE_FEATURES', 'optee', 'optee-client-qoriq', '', d)} \
    \
    mtd-utils \
    mtd-utils-ubifs \
"

