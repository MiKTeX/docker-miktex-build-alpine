#!/bin/sh
package_revision=${1-1}
cd /miktex/build
cmake \
    -DMIKTEX_PACKAGE_REVISION=${package_revision} \
    -DMIKTEX_LINUX_DIST=alpine \
    -DMIKTEX_LINUX_DIST_VERSION=undefined \
    -DMIKTEX_LINUX_DIST_CODE_NAME=undefined \
    -DUSE_SYSTEM_HARFBUZZ=FALSE \
    -DUSE_SYSTEM_HARFBUZZ_ICU=FALSE \
    -DUSE_SYSTEM_LOG4CXX=FALSE \
    -DUSE_SYSTEM_POPPLER=FALSE \
    -DUSE_SYSTEM_POPPLER_QT5=FALSE \
    -DUSE_SYSTEM_ZZIP=FALSE \
    -DWITH_UI_QT=FALSE \
    /miktex/source
