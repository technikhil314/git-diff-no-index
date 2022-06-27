#! /usr/bin/env bash
source=$1
target=$2
tempSource=$(mktemp -d)
rsync -avz --exclude-from='.gitignore' $source $tempSource
tempTarget=$(mktemp -d)
rsync -avz --exclude-from='.gitignore' $target $tempTarget
git diff --no-index --skip-to=$tempSource "$tempSource/$source" "$tempTarget/$target"
