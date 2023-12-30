#! /bin/sh
#
# This script kills existing swaybg process and spawns new one with new image.
#
# The purpose is to reset the wallpaper.
#

# find pid of running swaybg process
PID="$(pidof swaybg)"

# start new process with new image
swaybg -i "$(find ~/Wallpapers/. -type f | shuf -n1)" -m fill &

# swaybg -i ~/Wallpapers/0002.jpg -m fill &

sleep 1

#kill old swaybg process
kill "$PID"

#exit with success
exit 0
