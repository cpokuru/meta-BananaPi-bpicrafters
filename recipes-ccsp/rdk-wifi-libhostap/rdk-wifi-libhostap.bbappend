FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " file://Rpi_rdkwifilibhostap_changes.patch "
SRC_URI_append_aarch64 = " file://rdkwifilibhostap_compilation_errors_fix_64b.patch "

CFLAGS_append = " -D_PLATFORM_RASPBERRYPI_"
