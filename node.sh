#!/usr/bin/env bash

# nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install stable
nvm use stable
nvm alias default stable

# nvm install 6
# nvm install 8
# nvm install 10
# nvm install 12
# nvm use 12
# nvm alias default 12

# n
# npm install -g n

# n 6
# n 8
# # previous command installs, now call again to use:
# n 8

# npm install babel-cli depcheck source-map-explorer -g
