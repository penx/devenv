#!/bin/sh

touch ~/.profile
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'export EDITOR=code' >>~/.profile

# casks

# brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

brew update

./formulae.sh
./casks.sh
./fonts.sh
./mac-app-store.sh

# other installs
# xcode-select --install
sudo xcodebuild -license

# ./docker.sh
./config.sh
# aliases
# alias gpu=‘git pull && terminal-notifier -message "Git Pull complete"'

./node.sh

# TODO:
#
# Safari Addons
#
# uBlock Origin
#
# Chrome Addons
#
# Privacy Badger or uBlock Origin
#
# React DevTools
# https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi
# Redux DevTools
# https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd
# Node Inspector Manager
# https://chrome.google.com/webstore/detail/nodejs-v8-inspector-manag/gnhhdgbaldcilmgcpfddgdbkhjohddkj
