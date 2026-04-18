#!/usr/bin/env bash

# nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install stable
nvm use stable
nvm alias default stable

npm install -g @anthropic-ai/claude-code

claude plugin install linear@claude-plugins-official
claude plugin install notion-workspace-plugin@notion-plugin-marketplace
claude plugin install github@claude-plugins-official
claude plugin install figma@claude-plugins-official
claude plugin install frontend-design@claude-plugins-official
