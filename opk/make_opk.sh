#!/bin/sh

cd $(dirname $0)

OPK_NAME="${1:-PocketSNES.opk}"

echo Building "${OPK_NAME}"...

# create opk
FLIST="../dist/PocketSNES_gcw0.dge ../dist/PocketSNES_lepus.dge default.gcw0.desktop default.lepus.desktop ../dist/backdrop.png sfc.png"

rm -f "${OPK_NAME}"
mksquashfs ${FLIST} "${OPK_NAME}" -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
