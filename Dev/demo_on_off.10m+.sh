#!/usr/bin/env bash

# <bitbar.title>On/Off sample</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Mehdi Chaouch</bitbar.author>
# <bitbar.author.github>mehdichaouch</bitbar.author.github>
# <bitbar.desc>Just a demo of how to have a on/off script switcher for xbar/BitBar/Argos. This enable/disable a script without removing the file.</bitbar.desc>
# <bitbar.image>🐱</bitbar.image>
# <xbar.dependencies>bash sed<xbar.dependencies>

# Quick On/Off
IS_DISABLE=true
if [ "$IS_DISABLE" == "true" ]; then
  echo "😿 | terminal=false refresh=true" # default output in the menu bar
  echo "---"
  echo "🟢 On | bash='sed -i -e \"1 s/IS_DISABLE=true/IS_DISABLE=false/; t\" -e \"1,// s//IS_DISABLE=false/\" $0' terminal=false"
  exit
fi

### Your custom code - Start
echo "🐱 | terminal=false refresh=true"
echo "---"
### Your custom code - End

# Quick On/Off
echo "🔴 Off | bash='sed -i -e \"1 s/IS_DISABLE=false/IS_DISABLE=true/; t\" -e \"1,// s//IS_DISABLE=true/\" $0' terminal=false"
