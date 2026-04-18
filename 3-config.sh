#!/usr/bin/env bash

# Typing
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -globalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -globalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write -g com.apple.swipescrolldirection -bool NO

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# WebKitDeveloperExtras
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write -g WebKitDeveloperExtras -bool YES
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
defaults write com.apple.appstore WebKitDeveloperExtras -bool false

# Screen saver
defaults write com.apple.screensaver askForPassword 1
defaults write com.apple.screensaver askForPasswordDelay 0

# Hot corners: bottom left screensaver, bottom right disable screensaver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-br-corner -int 6

# Finder
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool YES
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME"
defaults write com.apple.finder AppleShowAllFiles -bool YES
chflags nohidden ~/Library

# Dock
defaults write com.apple.dock showhidden -bool YES

# Terminal
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"

# Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Default file associations
duti -s com.microsoft.VSCode .json all
duti -s com.microsoft.VSCode .md all
duti -s com.microsoft.VSCode .mdx all
duti -s com.microsoft.VSCode .js all
duti -s com.microsoft.VSCode .ts all
duti -s com.microsoft.VSCode .jsx all
duti -s com.microsoft.VSCode .tsx all
