#!/usr/bin/env bash

sudo -v

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

# Scroll zoom: control-scroll to zoom, without image smoothing
sudo defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
sudo defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
sudo defaults write com.apple.universalaccess closeViewSmoothImages -bool false

# Desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# WebKitDeveloperExtras
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write -g WebKitDeveloperExtras -bool YES
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

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
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Dock
defaults write com.apple.dock showhidden -bool YES

# Remove default Dock items (ignore errors if already removed)
for app in Siri Launchpad Contacts Notes Reminders Maps Photos Messages FaceTime Books "App Store" Calendar Mail Freeform TV News Keynote; do
  dockutil --remove "$app" --no-restart 2>/dev/null
done

# Add Dock items (skip if already present)
for app in /System/Applications/Safari.app /Applications/Slack.app /System/Applications/Utilities/Terminal.app /System/Applications/Music.app "/System/Applications/System Settings.app"; do
  dockutil --find "$(basename "$app" .app)" --no-restart 2>/dev/null || dockutil --add "$app" --no-restart
done

killall Dock

# Terminal
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
osascript <<'APPLESCRIPT'
tell application "Terminal"
  set font name of settings set "Pro" to "OperatorMonoLig-Book"
  set font size of settings set "Pro" to 12
  set font antialiased of settings set "Pro" to true
end tell
APPLESCRIPT

# Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# TextEdit
defaults write com.apple.TextEdit RichText -int 0

# Default file associations
duti -s com.microsoft.VSCode .json all 2>/dev/null
duti -s com.microsoft.VSCode .md all 2>/dev/null
duti -s com.microsoft.VSCode .mdx all 2>/dev/null
duti -s com.microsoft.VSCode .js all 2>/dev/null
duti -s com.microsoft.VSCode .ts all 2>/dev/null
duti -s com.microsoft.VSCode .jsx all 2>/dev/null
duti -s com.microsoft.VSCode .tsx all 2>/dev/null
