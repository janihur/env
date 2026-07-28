#!/bin/bash

# local and remote backup

set -e
# set -x

declare -r buffalo=/media/${USER}/BuffaloMS
declare -r lacie=/media/${USER}/LaCie750GB

if [[ ! -d ${lacie} ]]
then
  echo "ERROR: directory ${lacie} not available"
  exit 1
fi

# TODO
# if [[ ! -d ${buffalo} ]]
# then
#   echo "ERROR: directory ${buffalo} not available"
#   exit 1
# fi

declare -r rsync='rsync -hprtP'
declare -r remote='mini-1.private.cloud:/mnt'

# -----------------------------------------------------------------------------
# ~/Pictures/family-album

# make all local files read-only
find ~/Pictures/family-album -type f -perm -u+w -exec chmod a=r '{}' \;

${rsync} ~/Pictures/family-album/ ${lacie}/valokuvat/perhe-albumi
# TODO buffalo
${rsync} ~/Pictures/family-album/ ${remote}/family-pictures