#!/bin/bash

# Script downloads and places vim-mips syntax in the correct foler
# Can be modified to include other syntax files

# checks if directory already exists
if [ -d ~/.dotfiles/vim-mipssyntax ]
then
    echo "removing existing /vim-mipssyntax"
    rm -rf ~/.dotfiles/vim-mipssyntax
fi

# creates directory for syntax
mkdir -p ~/.dotfiles/vim/.vim/syntax

# changes directory to dotfiles folder
cd ~/.dotfiles

# clones mips.vim
echo "cloning vim-mipssyntax from github"
git clone git@github.com:harenome/vim-mipssyntax.git

# moves the syntax options
mv ./vim-mipssyntax/syntax/* ./vim/.vim/syntax

# removes leftovers
rm -rf ./vim-mipssyntax

echo "create symlink? (yes or no)"
read CHOICE
