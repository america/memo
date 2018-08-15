#!/usr/bin/env bash

TIMESTAMP=`date -u +"%Y%m%d%H%M%S"`
FILENAME="build_${TIMESTAMP}.tar.gz"
FILENAME_NOMAP="build_${TIMESTAMP}-nomap.tar.gz"
cd ~/dev/js/react03/memo/
mkdir artifacts
tar zcf  ${FILENAME} build/
mv ${FILENAME} artifacts/
rm -f build/static/css/*.map
rm -f build/static/js/*.map
tar zcf  ${FILENAME_NOMAP} build/
mv ${FILENAME_NOMAP} artifacts/
