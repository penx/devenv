#!/bin/sh

brew update
brew bundle --file=Brewfile

if [ "$1" = "--personal" ]; then
  brew bundle --file=Brewfile.personal
fi

sudo xcodebuild -license

echo 'alias 1btn="open --background -a Music.app https://edge.clrmedia.co.uk/obfm_mp3"' >> ~/.zshrc
