#=== colours ===#

BLACK="\[\e[0;30m\]"
RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
LYELLOW="\[\e[0;93m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;94m\]"
MAGENTA="\[\e[0;35m\]"
CYAN="\[\e[0;36m\]"
WHITE="\[\e[0;37m\]"
RESET="\[\e[0m\]"

#=== shopts ===#

shopt -s autocd

#=== ps1 ===#

export PS1="${CYAN}lucas${RESET}${WHITE}@${RESET}${YELLOW}\h${RESET}: "

#=== alias ===#

# edit .bashrc
alias brc="vim ~/.bashrc;source ~/.bashrc"

# edit .vimrc
alias vrc="vim ~/.vimrc"

# r settings
alias rprof="vim ~/.Rprofile"

# remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# system
alias ls='gls -aFh --color=always --group-directories-first'
alias ..="cd .."

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Make Tab autocomplete regardless of filename case
set completion-ignore-case on

# Tell grep to highlight matches
export GREP_OPTIONS='—color=auto'
