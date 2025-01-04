#!/bin/bash

for path in /mnt/filevault/*/
do
    dir=$(basename ${path})
    sudo mount -t nfs filevault.home:/DataVolume/${dir} $path
done
