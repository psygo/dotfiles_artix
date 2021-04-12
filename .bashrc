#!/bin/bash
#--------------------------------------------------------------------------------
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="konsole"
export BROWSER="brave"

# PATH and Other Bin Pointer Variables
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export PATH="${PATH}:/home/philippe/Code/Flutter/bin"
export PATH="${PATH}:/home/philippe/.emacs.d/bin"
export DART_SDK="/home/philippe/Code/Flutter/bin/dart"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPS="--extended"

# PS1
TIME_COLOR="\[\e[01;38;5;011m\]"
PATH_COLOR="\[\e[01;38;5;002m\]"
BRANCH_COLOR="\[\e[01;38;5;033m\]"
ROOT_OR_NOT_COLOR="\[\e[01;38;5;013m\]"

TIME="\t"
CURRENT_PATH="\w"
BRANCH="git status >/dev/null 2>&1 && git branch --show-current"
ROOT_OR_NOT="\$"
TEXT_RESET="\[\e[00m\]"
USER="\u"

COMPLETE_TIME="${TIME_COLOR}${TIME}"
COMPLETE_PATH="${PATH_COLOR}${CURRENT_PATH}"
COMPLETE_BRANCH="${BRANCH_COLOR}\$(${BRANCH})"
COMPLETE_ROOT_OR_NOT="${ROOT_OR_NOT_COLOR}${ROOT_OR_NOT}"

export PS1="${COMPLETE_PATH} ${COMPLETE_BRANCH} ${TEXT_RESET}"
#--------------------------------------------------------------------------------
# Some Terminal Settings
shopt -s autocd
HISTSIZE= HISTFILESIZE=
set -o vi
bind -m vi-insert '"\C-x\C-e": edit-and-execute-command'
#--------------------------------------------------------------------------------
# Proper Vim Redirection
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

# Useful Terminal CLI Tools
alias cls="clear"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias cat="bat"
alias trc="transmission-cli"
alias tremca="tremc -- -a"
alias ztr="zathura"
alias duq="du -BM -d1"
alias github_ssh="eval \$(ssh-agent -s) && ssh-add ~/.ssh/github_ssh"

# Package Managers
alias p="sudo pacman"
alias pi="sudo pacman -Syu"
alias pq="sudo pacman -Ss"
alias pr="sudo pacman -Rns"

alias yi="yay -Syu"
alias yq="yay -Ss"
alias yr="yay -Rns"

# Core Dotfiles Editings
alias bashrc="vim ~/.bashrc"
alias gitconfig="vim ~/.gitconfig"
alias gitignore="vim ~/.gitignore"
alias vimrc="vim ~/.config/nvim/init.vim"
alias xmonadrc="vim ~/.xmonad/xmonad.hs"
alias xinitrc="vim ~/.xinitrc"
alias zathurarc="vim ~/.config/zathura/zathurarc"
alias zathurarc="vim ~/.imwheelrc"
alias README="vim ~/README.md"

# Folders
alias fanaro_io="cd ~/Code/FanaroEngineering/fanaro.io/"
alias brnhk="cd ~/Code/BrasilNihonKiin/nihonkiin.com.br/"
alias courses="cd ~/Code/Courses/"
alias lab="cd ~/Code/Lab/"
alias notes="cd ~/Notes/"
alias scripts="cd ~/.scripts/"

# Notetaking
alias note-tmp="cd ~/Notes/Tmp/ && vim"
alias cn="bash ~/.scripts/create_note.sh"
#--------------------------------------------------------------------------------
