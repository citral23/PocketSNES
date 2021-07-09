#!/bin/sh

cd $(dirname $0)

OPK_NAME="${1:-PocketSNES.opk}"

echo Building "${OPK_NAME}"...

# create opk
FLIST="PocketSNES.* default.*.desktop ../dist/backdrop.png sfc.png"

rm -f "${OPK_NAME}"
mksquashfs ${FLIST} "${OPK_NAME}" -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
