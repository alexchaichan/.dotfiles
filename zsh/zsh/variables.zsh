#!/usr/bin/env zsh

####################################################################################
# desktop / laptop ?                                                               #
####################################################################################

if [[ "$os" == "osx" ]]; then

  local battery=$(pmset -g batt  | grep -o "InternalBattery")

    if [ -z "$battery" ]; then
			pc="desktop"

    else
      pc="laptop"

    fi

  elif [[ "$os" == "linux" ]]; then

    if [ -z /org/freedesktop/UPower/devices/battery_BAT0 ]; then
			pc="desktop"

    else
      pc="laptop"

    fi
fi

####################################################################################
# ac drawing ?                                                                      #
####################################################################################

if [[ "$os" == "osx" && "$pc" == "laptop" ]]; then

  export batt=$(pmset -g batt | grep "Now drawing from 'AC Power'")

  if [[ "$batt" == "Now drawing from 'AC Power'" ]]; then
    ac=true

  else
    ac=false
  fi
fi

####################################################################################
# keyboardlayout                                                                   #
####################################################################################

if [[ "$os" == "osx" && "$pc" == "laptop" ]]; then

KLAYOUT=$(defaults read /Library/Preferences/com.apple.HIToolbox.plist  AppleEnabledInputSources | awk '{ print $4 }' | awk 'NR==5' )

fi
