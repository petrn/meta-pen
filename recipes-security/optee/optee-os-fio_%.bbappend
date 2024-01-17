FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

EXTRA_OEMAKE:append:stm32mp15-disco = " \
    CFG_CORE_SE05X_DISPLAY_SCP03_KEYS=${CFG_CORE_SE05X_DISPLAY_SCP03_KEYS} \
    ${@bb.utils.contains('MACHINE_FEATURES', 'se05x', 'CFG_CORE_SE05X_BAUDRATE=1000000', '', d)} \
    CFG_REE_FS=y CFG_RPMB_FS=y \
    CFG_RPMB_FS_DEV_ID=1 \
    CFG_STM32MP15_HUK_BSEC_DERIVE_UID=y CFG_STM32MP15_HUK_BSEC_KEY=n \
    CFG_CORE_SE05X_SCP03_PROVISION_ON_INIT=n \
    CFG_CORE_SE05X_SCP03_PROVISION=n \
    CFG_CORE_SE05X_SCP03_PROVISION_WITH_FACTORY_KEYS=n \
"

SRC_URI += "file://0001-Edit-DTS-for-I2C-speed-show-I2C-speed-HUK-debug.patch \
            "