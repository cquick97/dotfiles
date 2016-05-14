#!/usr/bin/env bash

# make sure dotfiles are up to date
git pull origin master

# vim
ln -s vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# zsh
ln -s zshrc ~/.zshrc

# hammerspoon
mkdir ~/.hammerspoon
ln -s hammerspoon ~/.hammerspoon/init.lua

# brew
./brew.sh
./cask.sh
