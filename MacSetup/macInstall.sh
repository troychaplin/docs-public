!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./macos-fresh-install.sh` then `./macos-fresh-install.sh`

echo "Updating gems..."
gem update

echo "Installing homebrew..."
/usr/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-cask
brew tap 'homebrew/bundle'
brew tap 'homebrew/cask'
brew tap 'homebrew/cask-drivers'
brew tap 'homebrew/cask-fonts'
brew tap 'homebrew/core'
brew tap 'homebrew/services'

echo "Updating homebrew..."
brew update
brew upgrade

# Dev Tools
echo "Installing dev tools..."
brew install composer
brew install git
brew install node
brew install yarn

# Browsers
echo "Installing browsers..."
brew install --cask brave-browser
# brew install --cask firefox
# brew cask install cask-versions/firefoxdeveloperedition

# Design
echo "Installing development apps..."
brew cask install postman
brew cask install sequel-pro
brew cask install sourcetree
brew cask install transmit
brew cask install visual-studio-code

# Design
echo "Installing design apps..."
brew cask install figma

# Productivity
echo "Installing productivity apps..."
brew cask install cheatsheet
brew cask install enpass
brew cask install microsoft-teams
brew cask install rectangle
brew cask install spotify
brew cask install the-unarchiver

# VS Code Extensions
echo "Installing vs code extensions..."
# cat vscode-extensions.txt | xargs -L1 code --install-extension
