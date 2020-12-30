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

# append to history file
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

#=== ps1 ===#

export PS1="${CYAN}lucas${RESET}${WHITE}@${RESET}${YELLOW}\h${RESET} [${PURPLE}\W${RESET}]$ "

#=== alias ===#

# run aliases
if [ -f ~/.bash_aliases ]
then
    source ~/.bash_aliases
fi

# edit .bashrc
alias brc="vim ~/.bashrc;source ~/.bashrc"

# open R terminal
alias R="cd /Library/Frameworks/R.framework/Resources/bin;./R --quiet --no-save;cd ~"

# remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# system
alias ls='gls -aFh --color=always --group-directories-first'
alias ..="cd .."

# colours
alias grep='grep --color=auto'
alias fregp='fgrep --color=auto'
alias efrep='egrep --color=auto'

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
