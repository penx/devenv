#!/bin/sh

brew update

./2a-formulae.sh
./2b-casks.sh
./2c-fonts.sh
./2d-mac-app-store.sh

# other installs
sudo xcodebuild -license

echo 'alias 1btn="open --background -a Music.app https://edge.clrmedia.co.uk/obfm_mp3"' >> ~/.zshrc

# ./docker.sh
./2e-config.sh
# aliases
# alias gpu=‘git pull && terminal-notifier -message "Git Pull complete"'

./2e-node.sh

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
