# dotfiles

#### Welcome to my dotfiles page (:

After spending way too much time on the internet looking for ways to make my terminal look nice, I finally compiled what I have found to be the best *~ & prettiest ~* of 'em all.
The bulk of the files are made to be compatible with macOS.

### Content:
- .aliases
- .bashrc
- .gitconfig
- .gitignore
- .Rprofile
- .tmux.conf
- .vimrc
- .zshrc

### Pre-conditions:

#### [homebrew](https://brew.sh/)

> macOS Package Manager\
Follow the tutorial on the link above if you haven't already.

#### [stow](https://www.gnu.org/software/stow/manual/)
```bash
brew install stow
```

> *Make sure there are no dotfiles in your home folder. Stow won't overwrite!*

#### [vim-plug](https://github.com/junegunn/vim-plug)
> Follow the tutorial on the link above if you haven't already.\
Automatic installation script also in .vimrc

#### [core utils](https://www.gnu.org/software/coreutils/)
```bash
brew install coreutils
```

#### [Oh my zsh](https://ohmyz.sh/)
> Follow the tutorial on the link above if you haven't already.\

### How to make this work?

1. Clone the files to your computer

```bash
git clone https://github.com/lucaskobashi/.dotfiles.git
```

2. Choose your weapon! :gun:

##### Manual :airplane:

- If you are on manual, you probably know what you're doing and don't need to read this tutorial.
- Files are stored on ~/.dotfiles
- Each file is under its respective folder
- Use them as you wish (:

##### Automatic :rocket:

- If you're reading a .dotfiles page on github you probably know what you're doing
- Please refere to [manual](#manual-airplane) section.
- But if you're lazy, you can do the following:

> ps: i am not responsible for anything you do on your side. make sure you understand what is going on before even trying.

```bash
bash ~/.dotfiles/dotfiles.sh
```
>The script will create the symlink using stow and remove any _.DS_Store_ files that may have slipped in

### Stow files
```bash
cd ~/.dotfiles
stow -vt ~
```

### Acknowledgements

- My T.A. **Evan Semenoff** for getting me started with all of this
- My friend **[Braden Dubois](https://bradendubois.dev)** for all the help and inspiration
- [itchyny/lightline](https://github.com/itchyny/lightline.vim)
- [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
- [joshdick/onedark](https://github.com/joshdick/onedark.vim)
- All the youtube videos with a title that contains the words:
    * bashrc
    * zshrc
    * vimrc
    * terminal customization
