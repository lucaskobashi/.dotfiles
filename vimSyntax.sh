#!/bin/bash

# checks if directory already exists
if [ -d ~/.dotfiles/vim-mipssyntax ]
then
    echo "removing existing /vim-mipssyntax"
    rm -rf ~/.dotfiles/vim-mipssyntax
fi

# creates directory for syntax
mkdir -p ~/.dotfiles/vimSyntax/.vim/syntax

# changes directory to dotfiles folder
cd ~/.dotfiles

# clones mips.vim
echo "cloning vim-mipssyntax from github"
git clone git@github.com:harenome/vim-mipssyntax.git

# moves the syntax options
mv ./vim-mipssyntax/syntax/* ./vimSyntax/.vim/syntax

# removes leftovers
rm -rf ./vim-mipssyntax

echo "create symlink? (yes or no)"
read CHOICE

# stow the files

if [ $CHOICE = "y" -o $CHOICE = "yes" ]
then
    echo "creating symlink."
    stow --adopt -vt ~ vimSyntax
    echo "symlink created"
else
    echo "symlink not created."
fi
