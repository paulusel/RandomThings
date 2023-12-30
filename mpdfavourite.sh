#! /bin/bash

FAV_LIST="$XDG_CONFIG_HOME/mpd/playlists/Favourites.m3u"

mpc -f %file% current | tee -a "$FAV_LIST" > /dev/null
