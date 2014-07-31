#!/bin/bash

# update the submodules
git submodule update -i

# Symbolic links
ln -s ${PWD}/bashrc   ~/.bashrc
ln -s ${PWD}/bin      ~/bin
ln -s ${PWD}/vim      ~/.vim
ln -s ${PWD}/vimrc    ~/.vimrc
