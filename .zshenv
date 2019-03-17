#!/bin/zsh

export EDITOR=vim
export VISUAL=vim

PATH=$HOME/.local/bin:$PATH
[ -f ~/.cargo/env ] && . ~/.cargo/env
