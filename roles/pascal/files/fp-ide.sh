#!/bin/bash

declare -r work_dir=~/src/pascal

gnome-terminal \
 --title='Free Pascal IDE' \
 --geometry=100x80 \
 --working-directory="$work_dir" \
 -- fp
