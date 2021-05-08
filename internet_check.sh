#!/bin/bash

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo "IPv4 is up" # | /usr/local/bin/gotify-cli push
else
  echo "IPv4 is down" | /usr/local/bin/gotify-cli push
fi

