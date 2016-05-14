#!/usr/bin/env bash

brew update
brew upgrade --all

brew install zsh
sudo grep -q '/usr/local/bin/zsh' /etc/shells || echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

brew install ack
brew install blackbox
brew install git
brew install htop
brew install speedtest_cli
brew install tree
brew install vim --override-system-vi
brew install wget

brew cleanup
