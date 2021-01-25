#!/bin/bash

# checks if directory was cloned successfully
if [ ! -d ~/.dotfiles/ ]
then
    echo "cloning directory from github"
    git clone https://github.com/lucaskobashi/.dotfiles.git ~
fi

# changes directory to .dotfiles
echo "changing directory to ~/.dotfiles"
cd ~/.dotfiles

# deletes .DS_Store files that might have been downloaded
echo "deleting .DS_Store files from ~/.dotfiles"
find . -type f -name '*.DS_Store' -ls -delete

echo "create symlink? (yes or no)"
read CHOICE

if [ $CHOICE = "y" -o $CHOICE = "yes" ]
then
    echo "creating symlink."
    stow -vt ~ git bash htop R tmux vim vimSyntax
    echo "symlink created"
else
    echo "symlink not created."
fi
