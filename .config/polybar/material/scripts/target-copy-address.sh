#!/bin/bash

if [[ -f /tmp/target.tmp ]]; then
  cat /tmp/target.tmp | awk -F',' '{print $1}' | tr -d '\n' | xclip -sel clip
  dunstify 'Address copied to the clipboard!' -u normal
fi
