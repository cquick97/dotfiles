#!/usr/bin/env bash

# make sure dotfiles are up to date
git pull origin master

# install software
./brew.sh
./cask.sh

# change shell
grep -q '/usr/local/bin/zsh' /etc/shells || echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# link configs
mkdir ~/.hammerspoon
ln -s hammerspoon ~/.hammerspoon/init.lua
ln -s zshrc ~/.zshrc
ln -s vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

