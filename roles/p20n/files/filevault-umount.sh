#!/bin/bash

for path in /mnt/filevault/*/
do
    sudo umount -f -l ${path}
done
