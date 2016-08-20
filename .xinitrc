#!/bin/sh
sh ~/.fehbg
numlockx &
setxkbmap fr oss &
xrdb -merge ~/.Xresources &
wait

dunst &
pidgin &
redshift &
xautolock -locker 'i3lock-wrapper' &

exec i3
