#!/bin/sh
sh ~/.fehbg
numlockx &
setxkbmap -model typematrix fr bepo &
wait
. /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

exec i3
