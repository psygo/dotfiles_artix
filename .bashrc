#!/bin/bash
#--------------------------------------------------------------------------------
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="konsole"
export BROWSER="brave"

TIME_COLOR="\[\e[01;38;5;011m\]"
PATH_COLOR="\[\e[01;38;5;002m\]"
BRANCH_COLOR="\[\e[01;38;5;033m\]"
ROOT_OR_NOT_COLOR="\[\e[01;38;5;013m\]"

TIME="\t"
CURRENT_PATH="\w"
BRANCH="git status >/dev/null 2>&1 && git branch --show-current"
ROOT_OR_NOT="\$"
TEXT_RESET="\[\e[00m\]"

COMPLETE_TIME="${TIME_COLOR}${TIME}"
COMPLETE_PATH="${PATH_COLOR}${CURRENT_PATH}"
COMPLETE_BRANCH="${BRANCH_COLOR}\$(${BRANCH})"
COMPLETE_ROOT_OR_NOT="${ROOT_OR_NOT_COLOR}${ROOT_OR_NOT}"

export PS1="${COMPLETE_TIME} ${COMPLETE_PATH} ${COMPLETE_BRANCH} ${COMPLETE_ROOT_OR_NOT} ${TEXT_RESET}"

export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export PATH="${PATH}:/home/philippe/Code/Flutter/bin"
export PATH="${PATH}:/home/philippe/.emacs.d/bin"
export DART_SDK="/home/philippe/Code/Flutter/bin/dart"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPS="--extended"
#--------------------------------------------------------------------------------
shopt -s autocd
HISTSIZE= HISTFILESIZE=
set -o vi
bind -m vi-insert '"\C-x\C-e": edit-and-execute-command'
#--------------------------------------------------------------------------------
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

alias cls="clear"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias cat="bat"

alias p="sudo pacman"
alias pi="sudo pacman -Syyu"
alias pq="sudo pacman -Ss"
alias pr="sudo pacman -Rns"

alias github_ssh="eval \$(ssh-agent -s) && ssh-add ~/.ssh/github_ssh"

alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.config/nvim/init.vim"
alias xmonadrc="vim ~/.xmonad/xmonad.hs"
alias xinitrc="vim ~/.xinitrc"
alias README="vim ~/README.md"

alias fanaro_io="cd ~/Code/FanaroEngineering/fanaro.io"
alias brnhk="cd ~/Code/BrasilNihonKiin/nihonkiin.com.br"
#--------------------------------------------------------------------------------
