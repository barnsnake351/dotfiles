# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# Configure dock settings
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock mineffect -string suck
defaults write comm.apple.dock tilesize -integer 36
defaults write com.apple.dock largesize -integer 96
defaults write com.apple.dock autohide-delay 0.5
defaults write com.apple.dock persistent-apps
defaults write com.apple.dock persistent-others
defaults write com.apple.dock static-only -bool true

# Apply dock settings:
killall Dock
