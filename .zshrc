#!/bin/zsh

# prompt
autoload -Uz colors
colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats "%{$fg_no_bold[magenta]%}"$'\uf126 %b%u%c '
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%{$fg_bold[yellow]%}!"
zstyle ':vcs_info:*' unstagedstr "%{$fg_bold[red]%}!"
precmd() { vcs_info }
zle-keymap-select() {
    zle reset-prompt
    zle -R
}
zle -N zle-keymap-select
buildprompt() {
    if [ "$KEYMAP" = vicmd ]
    then
        echo -n "%{$fg_bold[red]%}"
    else
        echo -n "%{$fg_bold[white]%}"
    fi

    echo "%~"
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
PROMPT='$(buildprompt) '
RPROMPT='$(buildrprompt) $vcs_info_msg_0_%{$fg_no_bold[blue]%}%T%{%b%f%k%}'
setopt promptsubst

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt histignorealldups sharehistory

# completion
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose true
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
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

# install Vundle
if ! [ -d ~/.vim/bundle ]
then
    git clone https://github.com/VundleVim/vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
fi

if [ -d /usr/share/fzf ]
then
    . /usr/share/fzf/completion.zsh
    . /usr/share/fzf/key-bindings.zsh
else
    echo 'missing: fzf' >&2
fi

[ -f ~/.local/bin/antigen.zsh ] || curl -L git.io/antigen >~/.local/bin/antigen.zsh
. ~/.local/bin/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
