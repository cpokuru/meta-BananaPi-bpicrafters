require ccsp_common_rpi.inc
CFLAGS_aarch64_append = " -Werror=format-truncation=1 "

FILESEXTRAPATHS_append := "${THISDIR}/files:"

SRC_URI_append += " \
    file://Fix-ccsp-eth-agent-build-error.patch;apply=no \
"

do_filogic_patches() {
    cd ${S}

    if [ ! -e filogic_patch_applied ] && [ "${PROJECT_BRANCH}" = "rdk-next" ]; then
        patch -p1 < ${WORKDIR}/Fix-ccsp-eth-agent-build-error.patch
        touch filogic_patch_applied
    fi
}
addtask filogic_patches after do_unpack before do_configure

LDFLAGS_append =" \
    -lsyscfg \
    -lbreakpadwrapper \
"

