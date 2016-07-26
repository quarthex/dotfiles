#!/bin/sh
sh ~/.fehbg
numlockx &
setxkbmap fr oss &
xrdb -merge ~/.Xresources &
wait

redshift &
dunst &
pidgin &
xautolock -locker 'i3lock -c 1b1918' &

exec i3
