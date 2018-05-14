#!/bin/sh
sh ~/.fehbg
numlockx &
setxkbmap -model typematrix fr bepo &
wait

# play a welcome sound
mplayer ~/.config/i3/startup.mp3 &
dunst &
pidgin &
redshift &

exec i3
