#!/usr/bin/env bash

folder_path=${HOME}'/Pictures/Screenshots/'
file_path=${folder_path}$(date '+%Y-%m-%d_%H.%M.%S').png

if [ "${1}" == '-e' ]; then
  import -window root ${file_path}
  xclip -selection clipboard -target image/png -i < ${file_path}
elif [ "${1}" == '-s' ]; then
  import ${file_path}
  xclip -selection clipboard -target image/png -i < ${file_path}
else
  exit 1
fi

