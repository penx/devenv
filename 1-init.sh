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

# SSH key
if [ ! -f ~/.ssh/id_ed25519 ]; then
  if [ -z "$MYEMAIL" ]; then
    echo "Error: MYEMAIL is not set. Run: export MYEMAIL=your@email.com"
    exit 1
  fi
  ssh-keygen -t ed25519 -C "$MYEMAIL"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_ed25519
fi
