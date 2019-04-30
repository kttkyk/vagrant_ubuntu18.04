#!/bin/bash


# install neovim
apt-get install -y software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install -y neovim

apt-get install -y virtualenv virtualenvwrapper


# TODO install tmux
