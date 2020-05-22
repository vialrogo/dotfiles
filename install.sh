#!/bin/bash

# git submodules
git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting oh-my-zsh_custom/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k oh-my-zsh_custom/themes/powerlevel9k

# Symbolic links
ln -sf ${PWD}/.bashrc     ~/
ln -sf ${PWD}/bin         ~/
ln -sf ${PWD}/.vim        ~/
ln -sf ${PWD}/.vimrc      ~/
ln -sf ${PWD}/.chktexrc   ~/
ln -sf ${PWD}/.oh-my-zsh  ~/
ln -sf ${PWD}/.zshrc      ~/
ln -sf ${PWD}/.bash_git   ~/
ln -sf ${PWD}/.tmux.conf  ~/
ln -sf ${PWD}/.tmux       ~/
ln -sf ${PWD}/.oh-my-zsh  ~/

rm -rf ~/.oh-my-zsh/custom
ln -sf ${PWD}/oh-my-zsh_custom/plugins ~/.oh-my-zsh/custom
ln -sf ${PWD}/oh-my-zsh_custom/themes/bullet-train.zsh-theme ~/.oh-my-zsh/custom/themes
ln -sf ${PWD}/oh-my-zsh_custom/themes/powerlevel9k ~/.oh-my-zsh/custom/themes
