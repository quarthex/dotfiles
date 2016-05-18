#!/bin/sh
sh ~/.fehbg
setxkbmap fr oss &
xautolock -locker 'i3lock -c 1b1918' &
xrdb -merge ~/.Xresources &
wait

firefox & disown
redshift & disown
dunst & disown
pidgin & disown

exec i3
