#!/bin/sh

brew update
brew bundle --file=Brewfile

if [ "$1" = "--personal" ]; then
  brew bundle --file=Brewfile.personal
fi

sudo xcodebuild -license
