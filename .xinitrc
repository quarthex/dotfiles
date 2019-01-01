#!/bin/sh
sh ~/.fehbg
numlockx &
setxkbmap -model typematrix fr bepo &
wait

exec i3
