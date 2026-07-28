#!/bin/bash

set -e
# set -x

declare -r usb1="/media/${USER}/USB DISK"
declare -r usb2=TODO

if [[ -d ${usb1} ]]
then
  dest_dir="${usb1}/$(date +%F-%H%M)"
fi

if [[ -d ${usb2} ]]
then
  dest_dir="${usb2}/$(date +%F-%H%M)"
fi

if [[ -z ${dest_dir} ]]
then
  echo "ERROR: destination directory not available"
  exit 1
fi

mkdir "$dest_dir"

# will ask password
declare -r key=$(gpg --list-secret-keys | head -4 | tail -1)
gpg --output "$dest_dir/private.pgp" --armor --export-secret-key ${key}

cp --recursive ~/.password-store "$dest_dir"
cp --recursive ~/src/esperi "$dest_dir"
cp --recursive ~/Documents "$dest_dir"
