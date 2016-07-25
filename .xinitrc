#!/bin/sh
sh ~/.fehbg
setxkbmap fr oss &
xautolock -locker 'i3lock -c 1b1918' &
xrdb -merge ~/.Xresources &
wait

dunst & disown
pidgin & disown
redshift & disown

exec i3
