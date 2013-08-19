#!/bin/sh

set -e

export DEVICE=expressatt
export VENDOR=samsung
./../d2-common/extract-files.sh $@
