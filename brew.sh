#!/usr/bin/env bash

brew update
brew upgrade --all

brew install ack
brew install blackbox
brew install git
brew install htop
brew install speedtest_cli
brew install tree
brew install vim --override-system-vi
brew install wget
brew install zsh

brew cleanup
