#!/usr/bin/env sh

dotfiledir=$(dirname $0)
for dotfile in $(find ${dotfiledir} -type f -name ".*") ; do
    ln -s ${dotfile} ~/$(basename ${dotfile})
done
