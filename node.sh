#!/usr/bin/env bash

# nvm

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 6
nvm install 8
nvm install 10
nvm install 12
nvm use 12

# n
# npm install -g n

# n 6
# n 8
# # previous command installs, now call again to use:
# n 8

npm install babel-cli depcheck source-map-explorer -g
