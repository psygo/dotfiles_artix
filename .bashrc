#--------------------------------------------------------------------------------
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="konsole"
export BROWSER="brave"

DIVIDER_COLOR="\[\e[01;38;5;250m\]"
TIME_COLOR="\[\e[01;38;5;011m\]"
PATH_COLOR="\[\e[01;38;5;002m\]"
BRANCH_COLOR="\[\e[01;38;5;009m\]"
ROOT_OR_NOT_COLOR="\[\e[01;38;5;013m\]"
COMMAND_TEXT_COLOR="\[\e[01;38;5;243m\]"

DIVIDER="|"
TIME="\t"
CURRENT_PATH="\w"
BRANCH="git status >/dev/null 2>&1 && git branch --show-current"
ROOT_OR_NOT="\$"
TEXT_RESET="\[\e[00m\]"

COMPLETE_DIVIDER="${DIVIDER_COLOR}${DIVIDER}"
COMPLETE_TIME="${TIME_COLOR}${TIME}"
COMPLETE_PATH="${PATH_COLOR}${CURRENT_PATH}"
COMPLETE_BRANCH="${BRANCH_COLOR}\$(${BRANCH})"
COMPLETE_ROOT_OR_NOT="${ROOT_OR_NOT_COLOR}${ROOT_OR_NOT}"

export PS1="${COMPLETE_TIME} ${COMPLETE_PATH} ${COMPLETE_BRANCH} ${COMPLETE_ROOT_OR_NOT} ${TEXT_RESET}"

# Flutter and Dart
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export PATH="${PATH}:/home/philippe/Code/Flutter/bin"
export PATH="${PATH}:/home/philippe/.emacs.d/bin"
#--------------------------------------------------------------------------------
#shopt -s autocd
HISTSIZE= HISTFILESIZE=
set -o vi
#--------------------------------------------------------------------------------
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

alias cls="clear"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias cat="bat"
alias rg="ripgrep"

alias p="sudo pacman"
alias pi="sudo pacman -Syu"
alias pq="sudo pacman -Ss"

alias github_ssh="~/.scripts/github_ssh.sh"

alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.config/nvim/init.vim"
alias xmonadrc="vim ~/.xmonad/xmonad.hs"
alias xinitrc="vim ~/.xinitrc"
#--------------------------------------------------------------------------------
