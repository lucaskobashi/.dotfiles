#=== oh my zsh ===#

export ZSH="$HOME/.oh-my-zsh"       # path to location
ZSH_THEME='lucas'                   # theme none

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 15   # check for updates every n days

export EDITOR='vim'                 # vim as default editor

#=== plugins ===#

plugins=(
colored-man-pages
aliases
zsh-autosuggestions
zsh-syntax-highlighting
)

#=== setopt ===#

setopt autocd

#=== source ===#

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.macaliases
