#!/bin/bash

# <bitbar.title>Internet Check</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Mehdi Chaouch</bitbar.author>
# <bitbar.author.github>mehdichaouch</bitbar.author.github>
# <bitbar.desc>Check if internet is working.</bitbar.desc>
# <bitbar.image>📍</bitbar.image>
# <xbar.dependencies>bash fping<xbar.dependencies>

##############################################################################################################
# Check internet

COUNT=6
until (( COUNT == 0 )); do
  if $(command -v fping) -c1 -t300 8.8.8.8 2>/dev/null 1>/dev/null; then
    break
  fi

  if (( --COUNT == 0 )); then
    echo "-"
    exit
  fi

  sleep 10
done
