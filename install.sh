#!/bin/bash

###############################################################################
# Bash

## 4. Symbolic links
#
    ln -sf ${PWD}/bashrc        ~/.bashrc

###############################################################################
# TMUX

## 1. Install TMUX with pacakge manager
#
    yay -S tmux

## 2. Symbolic links
#
    ln -sf ${PWD}/tmux.conf     ~/.tmux.conf
    ln -sf ${PWD}/tmux          ~/.tmux

## 3. Config the terminal emulator for start with:
#
#   tmux new -A -s <terminalname>

###############################################################################
# Neovim

## 1. Install neovim with pacakge manager
#
    yay -S neovim

## 2. Install extra nvim dependences
#
    pip install msgpack-python pynvim

## 3. Symbolic links
#
    ln -sf ${PWD}/config/nvim   ~/.config/nvim

## 4. Install packages. Open neovim and use:
#
#   :PlugInstall
#   :PlugUpdate
#   :PlugUpgrade
#   :PlugClean

###############################################################################
# fish

## 1. Install fish with package manager
#
    yay -S fish

## 2. Symbolic links
#
    ln -sf ${PWD}/config/fish   ~/.config/fish

## 3. Install oh-my-fish:
#
    curl -L https://get.oh-my.fish | fish

## 4. Install extensions
# 
#   Theme: 
    omf install integral
#   Colored man pages: 
    omf install https://github.com/decors/fish-colored-man

###############################################################################
# Extra stuff

## 1. Install exa
#
    yay -S exa

