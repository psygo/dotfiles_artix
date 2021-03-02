#--------------------------------------------------------------------------------
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="konsole"
export BROWSER="brave"

CYAN="\[\e[01;36m\]"
WHITE="\[\e[01;37m\]"
BLUE="\[\e[01;34m\]"
BRANCH_COLOR="\[\e[01;32m\]"
TEXT_RESET="\[\e[00m\]"
TIME="\t"
CURRENT_PATH="\w"
ROOT_OR_NOT="\$"
BRANCH="git branch --show-current"
export PS1="${CYAN}[${BLUE}${TIME}${WHITE} ${CURRENT_PATH}${CYAN}] ${BRANCH_COLOR}| \$(${BRANCH}) | ${ROOT_OR_NOT}${TEXT_RESET} "

export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="${PATH}:/home/philippe/Code/Flutter/bin"
#--------------------------------------------------------------------------------
shopt -s autocd
HISTSIZE= HISTFILESIZE=
set -o vi
#--------------------------------------------------------------------------------
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias cat="bat"
alias rg="ripgrep"

alias p="sudo pacman"
alias pi="sudo pacman -Syu"
alias pq="sudo pacman -Ss"

alias github_ssh="~/.scripts/github_ssh.sh"

alias bashrc="vim ~/.bashrc"
alias xmonadrc="vim ~/.xmonad/xmonad.hs"
alias vimrc="vim ~/.config/nvim/init.vim"
#--------------------------------------------------------------------------------
