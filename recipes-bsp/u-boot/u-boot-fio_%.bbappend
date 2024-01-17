FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = "file://lmp-pen.cfg"
SRC_URI += "file://0001-Bootstage.patch"
