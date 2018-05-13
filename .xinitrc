#!/bin/sh
sh ~/.fehbg
numlockx &
setxkbmap -model typematrix fr bepo &
xrdb -merge ~/.Xresources &
wait

# play a welcome sound
mplayer ~/.config/i3/startup.mp3 &
dunst &
pidgin &
redshift &
xautolock -locker $HOME/.bin/i3lock-wrapper &

exec i3
