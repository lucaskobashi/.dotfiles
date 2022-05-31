#!/bin/zsh

# checks if directory was cloned successfully
if [ ! -d ~/.dotfiles/ ]
then
    printf "%s\n" "cloning directory from github"
    git clone https://github.com/lucaskobashi/.dotfiles.git ~
fi

# changes directory to .dotfiles
printf "%s\n" "changing directory to ~/.dotfiles"
cd ~/.dotfiles

# deletes .DS_Store files that might have been downloaded
printf "%s\n" "deleting .DS_Store files from ~/.dotfiles"
find . -type f -name "*.DS_Store" -ls -delete

# macbook check
TRIGGER=true
STOW_IGNORE="./aliases/.stow-local-ignore"
SOURCE="source ~/.macaliases"
TAIL_ZSHRC=$(tail -1 ./zsh/.zshrc)

while [ "$TRIGGER" = true ]
do
    read "MACCHOICE?are you on a macbook? (yes or no): "
 
    # check if input is yes
    if [ ${(L)MACCHOICE} = "y" -o ${(L)MACCHOICE} = "yes" ]
    then
        printf "%s\n" "macbook was selected"
        TRIGGER=false

    # check if input is no
    elif [ ${(L)MACCHOICE} = "n" -o ${(L)MACCHOICE} = "no" ]
    then

        # checking if it's set to source aliases
        while [ "$TAIL_ZSHRC" = "$SOURCE" ]
        do
            sed -i '' '$d' ./zsh/.zshrc
            TAIL_ZSHRC=$(tail -1 ./zsh/.zshrc)
            echo $TAIL_ZSHRC
        done

        echo "/.macaliases" >> $STOW_IGNORE
        printf "%s\n" "no macbook was selected"
        TRIGGER=false
    
    # invalid
    else
        printf "%s\n" "invalid input."
    fi
done

read "CHOICE?create symlink? (yes or no): "

if [ ${(L)CHOICE} = "y" -o ${(L)CHOICE} = "yes" ]
then

    # creates links
    printf "%s\n" "creating symlink."
    stow 2>&1 -vRt ~ aliases bash git R tmux vim zsh zsh-theme | grep -v "BUG in find_stowed_path"
    stow 2>&1 -vRt ~/.oh-my-zsh/themes zsh-theme | grep -v "BUG in find_stowed_path"

    vim -c ":PlugInstall" +q +q

    # remove stow ignore
    if [ -f $STOW_IGNORE ]
    then
        rm -f $STOW_IGNORE
    fi

    echo "symlink created"

else
    echo "symlink not created."
fi
