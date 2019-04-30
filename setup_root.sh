#!/bin/bash


python2_sym="/usr/local/bin/python2-neovim"
python3_sym="/usr/local/bin/python3-neovim"
if [ ! -e $python2_sym ]; then
    ln -s /home/vagrant/.virtualenvs/neovim2/bin/python $python2_sym
fi
if [ ! -e $python3_sym ]; then
    ln -s /home/vagrant/.virtualenvs/neovim3/bin/python $python3_sym
fi
