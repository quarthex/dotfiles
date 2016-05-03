#!/bin/zsh

# prompt
autoload -Uz colors
colors
buildrprompt() {
    local c=$?
    if [[ $c -eq 0 ]]; then
        echo -n "%{$fg_bold[green]%}\u2713"
    else
        if [[ $(( $c & 0x80 )) -ne 0 ]] && [[ $(( $c & ~0x80 )) -le 64 ]]; then
            c=`kill -l $(( $c & ~0x80 ))`
        fi
        echo -n "%{$fg_bold[red]%}$c"
    fi
}
PROMPT="%{$fg_bold[white]%}%~ "
RPROMPT='$(buildrprompt) %{$fg_no_bold[blue]%}%T%{%b%f%k%}'
setopt promptsubst

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# completion
zstyle :compinstall filename '/home/quarthex/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors `dircolors`
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
autoload -Uz compinit
compinit

bindkey -v
unsetopt beep

# alias
alias ls='ls --color=auto'
alias ll='ls -l'
alias ..='cd ..'
alias grep='grep --color=auto'

. /etc/profile.d/fzf.zsh
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
