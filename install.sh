#!/usr/bin/env bash

git pull origin master

ln -s vimrc ~/.vimrc
ln -s zshrc ~/.zshrc

mkdir ~/.hammerspoon
ln -s hammerspoon ~/.hammerspoon/init.lua

./cask.sh
