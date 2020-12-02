!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./macos-fresh-install.sh` then `./macos-fresh-install.sh`

echo "Updating gems..."
gem update

echo "Installing brew..."
/usr/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap homebrew/cask

# Dev Tools
brew install node
brew install git
brew install composer
brew install gulp-cli
brew install node-sass

# Mac Software
brew cask install visual-studio-code
brew cask install figma
brew cask install sequel-pro
brew cask install postman
brew cask install transmit
brew cask install sourcetree
brew cask install google-chrome
brew cask install firefox
brew cask install microsoft-teams
brew cask install enpass
brew cask install spotify
brew cask install rectangle