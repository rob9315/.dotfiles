#!/bin/sh

[ $RANDOM -gt 10000 ] \
  && export WALLPAPER="/home/$USER/.local/share/wallpapers/core_entrance.png" \
  || export WALLPAPER="/home/$USER/.local/share/wallpapers/bestwallpaperever.png"

feh --bg-scale $WALLPAPER

dbus-launch --sh-syntax --exit-with-session compton \
& exec dbus-launch --sh-syntax --exit-with-session dwm
