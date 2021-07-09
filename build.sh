#!/bin/bash

SAVEDPATH=$PATH
export PATH=/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/bin:/opt/gcw0-toolchain/usr/bin:/opt/gcw0-toolchain/usr/sbin:$PATH
make -f Makefile.gcw0
cp ./dist/PocketSNES_gcw0.dge ./dist/PocketSNES_gcw0.bak
make -f Makefile.gcw0 clean
mv ./dist/PocketSNES_gcw0.bak ./dist/PocketSNES_gcw0.dge
export PATH=$SAVEDPATH
export PATH=/opt/lepus-toolchain/usr/mipsel-lepus-linux-musl/sysroot/usr/bin:/opt/lepus-toolchain/usr/bin:/opt/lepus-toolchain/usr/sbin:$PATH
make -f Makefile.lepus
pushd ./opk && ./make_opk.sh && popd
export PATH=$SAVEDPATH
