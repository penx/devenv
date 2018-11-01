# https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
# https://github.com/ptb/mac-setup
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -globalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -globalDomain NSAutomaticCapitalizationEnabled -bool false
# defaults write -globalDomain com.apple.swipescrolldirection -bool false

# https://github.com/paularmstrong/dotfiles/blob/master/osx/defaults.sh
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist

# https://github.com/ymendel/dotfiles/blob/master/osx/finder.defaults
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME"

defaults write com.apple.screensaver askForPassword 1
defaults write com.apple.screensaver askForPasswordDelay 0

defaults write com.apple.dock wvous-bl-corner -int 5
# defaults write com.apple.dock wvous-bl-modifier -int 0

# Finder
defaults write com.apple.finder ShowStatusBar -bool YES

# show develop menu in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool YES

defaults write com.apple.dock showhidden -bool YES

defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"

# TODO: add items to dock
