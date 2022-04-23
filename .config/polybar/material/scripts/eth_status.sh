#!/bin/sh
IFACE=$(/usr/sbin/ifconfig | grep ens33 | awk '{print $1}' | tr -d ':')

if [ $IFACE != "" ]; then
    echo "$(/usr/sbin/ifconfig ens33 | grep "inet " | awk '{print $2}')"
  else
    echo ""
fi
