#!/usr/bin/env bash
# https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
# https://github.com/ptb/mac-setup
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write -globalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -globalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write -g com.apple.swipescrolldirection -bool NO

# https://github.com/paularmstrong/dotfiles/blob/master/osx/defaults.sh
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# WebKitDeveloperExtras
# https://blog.jim-nielsen.com/2022/inspecting-web-views-in-macos/
# https://osxdaily.com/2011/09/07/enable-element-inspector-mac-app-store/
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write -g WebKitDeveloperExtras -bool YES
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
defaults write com.apple.appstore WebKitDeveloperExtras -bool false

defaults write com.apple.screensaver askForPassword 1
defaults write com.apple.screensaver askForPasswordDelay 0

defaults write com.apple.dock wvous-bl-corner -int 5
# defaults write com.apple.dock wvous-bl-modifier -int 0

# Finder
# https://github.com/ymendel/dotfiles/blob/master/osx/finder.defaults
defaults write com.apple.finder ShowStatusBar -bool YES
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME"
defaults write com.apple.finder AppleShowAllFiles -bool YES

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Show the ~/Library folder
chflags nohidden ~/Library

# show develop menu in Safari
# defaults write com.apple.Safari IncludeDevelopMenu -bool YES

defaults write com.apple.dock showhidden -bool YES

defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"

# TODO: add items to dock

# turn off autocorrect
# https://apple.stackexchange.com/questions/299470/how-to-permanently-turn-off-check-spelling-while-typing-in-macos
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false

# hot corners
# https://dev.to/darrinndeal/setting-mac-hot-corners-in-the-terminal-3de
# bottom left screensaver, bottom right no screensaver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-br-corner -int 6

duti -s com.microsoft.VSCode .json all
duti -s com.microsoft.VSCode .md all
duti -s com.microsoft.VSCode .mdx all
duti -s com.microsoft.VSCode .js all
duti -s com.microsoft.VSCode .ts all
duti -s com.microsoft.VSCode .jsx all
duti -s com.microsoft.VSCode .tsx all
