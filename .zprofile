#!/bin/zsh

# external media auto mounter
pgrep udiskie >/dev/null || udiskie -a &

# num lock
[[ -n "$XDG_VTNR" ]] && setleds -D +num

# start Xorg on the first virtual console
[[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx
