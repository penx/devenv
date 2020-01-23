#!/usr/bin/env bash

# nvm

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
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
