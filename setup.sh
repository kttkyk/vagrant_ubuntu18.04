#!/bin/bash


if [ ! -e ~/.tmux.conf ] && [ -e ~/dotfiles/.tmux.conf ]; then
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
fi


# Setting up neovim
if [ ! -d ~/.config/nvim ] && [ -e ~/dotfiles/.vimrc ]; then
    mkdir -p ~/.config/nvim
    ln -s ~/dotfiles/.vimrc ~/.config/nvim/init.vim
fi


# Download and install dein and nvim plugins
if [ ! -d ~/.config/nvim/dein ]; then
    mkdir ~/.config/nvim/dein
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.config/installer.sh
    /bin/sh ~/.config/installer.sh ~/.config/nvim/dein
    nvim -c "call dein#install()"
    nvim -c "call dein#update()"
fi


source $(which virtualenvwrapper.sh)

mkvirtualenv neovim2 --python=/usr/bin/python2.7
mkvirtualenv neovim3 --python=/usr/bin/python3

workon neovim2
pip install neovim
deactivate

workon neovim3
pip install neovim
deactivate
