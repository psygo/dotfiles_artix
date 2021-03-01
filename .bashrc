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
CURRENT_PATH="\W"
ROOT_OR_NOT="\$"
BRANCH="git branch --show-current"
export PS1="${CYAN}[${BLUE}${TIME}${WHITE} ${CURRENT_PATH}${CYAN}] ${BRANCH_COLOR}| \$(${BRANCH}) | ${ROOT_OR_NOT}${TEXT_RESET} "
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

alias github_ssh="~/.scripts/github_ssh.sh"

alias bashrc="vim .bashrc"
#--------------------------------------------------------------------------------
