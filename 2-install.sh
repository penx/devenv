#!/bin/sh

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew update
brew bundle --file=Brewfile

if [ "$1" = "--personal" ]; then
  brew bundle --file=Brewfile.personal
fi

if ! xcodebuild -license check 2>/dev/null; then
  sudo xcodebuild -license
fi
