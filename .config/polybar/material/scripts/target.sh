#!/bin/bash
FILE=/tmp/target.tmp
GREEN="F#9FEF00"
RED="F#EB4034"
TEAL="F#64F5EB"

if [[ -f $FILE ]]; then
  IP="$(cat $FILE|awk -F',' '{print $1}')"
  OS="$(cat $FILE|awk -F',' '{print $2}')"
  HOST="$(cat $FILE|awk -F',' '{print $3}')"
  # Check conectivity
  bash -c "timeout 1 ping -c 1 $IP &> /dev/null" && STATUS=$GREEN || STATUS=$RED

  if [[ "$OS" == "1" ]]; then # 1 = Linux, 2 = Windows
    echo "%{$STATUS}  %{F-}- %{$TEAL}$HOST %{u-}"
  elif [[ "$OS" == "2" ]]; then
    echo "%{$STATUS}  %{F-}- %{$TEAL}$HOST %{u-}"
  fi
else
  echo "%{$RED} 什 - No target%{u-}"
fi
