#!/bin/zsh

# prompt
autoload -Uz colors
colors
buildrprompt() {
    local c=$?
    if [[ $c -eq 0 ]]; then
        echo -n "%{$fg_bold[green]%}\u2713"
    else
		if [[ $c -gt 128 ]] && [[ $1 -le 192 ]]; then
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

. /usr/share/fzf/key-bindings.zsh
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
