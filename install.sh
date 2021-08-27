#!/bin/bash

# Install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Symbolic links
ln -sf ${PWD}/bashrc        ~/.bashrc
ln -sf ${PWD}/config/nvim   ~/.config/nvim
ln -sf ${PWD}/tmux.conf     ~/.tmux.conf
ln -sf ${PWD}/tmux          ~/.tmux
