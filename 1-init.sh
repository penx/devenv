#!/usr/bin/env bash

# Prerequisites (such as xcode cli) in README.md

cp ./dotfiles/.zshrc ~

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Homebrew
touch ~/.profile
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >>~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo 'export EDITOR=code' >>~/.profile
