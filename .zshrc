#!/bin/zsh

# prompt
autoload -Uz colors
colors
vimode() {
    if [ "$KEYMAP" = vicmd ]
    then
        echo "%{$fg_bold[red]%}"
    else
        echo "%{$fg_bold[white]%}"
    fi
}
zle-keymap-select() {
    zle reset-prompt
    zle -R
}
zle -N zle-keymap-select
buildprompt() {
    local ref
    if ref=`git symbolic-ref HEAD 2>/dev/null` \
    || ref=`git rev-parse --short HEAD 2>/dev/null`
    then
        echo -n " %{$fg_no_bold[magenta]%}\uE0A0${ref#refs/heads/}"
        local dirty
        if [[ -n `git status --porcelain | head -n1` ]]
        then
            echo -n "%{$fg[red]%}!"
        fi
    fi
}
buildrprompt() {
    local c=$?
    if [[ $c -eq 0 ]]
    then
        echo -n "%{$fg_bold[green]%}\u2713"
    else
        if [[ $c -gt 128 ]] && [[ $1 -le 192 ]]
        then
            c=`kill -l $(( $c & ~0x80 ))`
        fi
        echo -n "%{$fg_bold[red]%}$c"
    fi
}
PROMPT='$(vimode)%~$(buildprompt) '
RPROMPT='$(buildrprompt) %{$fg_no_bold[blue]%}%T%{%b%f%k%}'
setopt promptsubst

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# completion
zstyle :compinstall filename $HOME/.zshrc
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors `dircolors`
autoload -Uz compinit
compinit

bindkey -v
unsetopt beep

# alias
alias ls='ls --color=auto'
alias ll='ls -l'
alias ..='cd ..'
alias grep='grep --color=auto'
alias minicom='minicom -c on'

if [ -d /usr/share/fzf ]
then
    . /usr/share/fzf/completion.zsh
    . /usr/share/fzf/key-bindings.zsh
else
    echo 'missing: fzf' >&2
fi

if [ -d /usr/share/zsh/plugins/zsh-syntax-highlighting ]
then
    . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo 'missing: zsh-syntax-highlighting' >&2
fi
