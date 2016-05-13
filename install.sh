#!/bin/bash

# update the submodules
git submodule update -i

git submodule foreach git pull origin master
git submodule foreach git checkout master

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
ln -sf ${PWD}/oh-my-zsh_custom ~/.oh-my-zsh/custom
