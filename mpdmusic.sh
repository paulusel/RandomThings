#!/bin/bash

CHOICE=$(mpc -f "[%position% ] [[[%artist% - ]%title%]|[%file%]]" playlist | wofi -c $XDG_CONFIG_HOME/wofi/mpdconfig)

if [[ $CHOICE == "" ]]; then
	exit 1
fi

POS=$(echo $CHOICE | cut -f 1 -d ' ')
mpc play $POS

exit 0
