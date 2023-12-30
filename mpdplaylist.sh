#!/bin/bash

CHOICE=$(mpc lsplaylists | wofi -c $XDG_CONFIG_HOME/wofi/mpdconfig)

if [[ $CHOICE == "" ]]; then
	exit 1
fi

mpc clear

if [[ $CHOICE == "All" ]]; then
	mpc add /
else
	mpc load "$CHOICE"
fi

mpc play

exit 0
