#!/bin/zsh

# external media auto mounter
pgrep udiskie >/dev/null || ( udiskie -a 2>&1 & disown )

# num lock
setleds -D +num

# start Xorg on the first virtual console
[[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx
