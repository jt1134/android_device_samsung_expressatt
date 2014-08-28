#!/bin/sh

set -e

if [ "$1" != "" ]; then
    export SOURCEDIR=$1
fi

export DEVICE=expressatt
export VENDOR=samsung
./../msm8960-common/extract-files.sh $@
