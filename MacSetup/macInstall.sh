!/bin/sh

echo "Insalling xcode..."
xcode-select --install

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap 'homebrew/cask'

echo "Updating homebrew..."
brew update
brew upgrade

# RVM Manager
echo "Installing Ruby and avoid editing system verion..."
brew install gnupg
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Dev Tools
echo "Installing dev tools..."
brew install composer
brew install git
brew install node
brew install yarn

# Browsers
echo "Installing browsers..."
brew install --cask brave-browser
brew install --cask firefox-developer-edition

# Design
echo "Installing development apps..."
brew install --cask postman
brew install --cask sequel-pro
brew install --cask sourcetree
brew install --cask transmit
brew install --cask visual-studio-code

# Design
echo "Installing design apps..."
brew install --cask figma

# Productivity
echo "Installing productivity apps..."
brew install --cask cheatsheet
brew install --cask enpass
brew install --cask memory-clean-3
brew install --cask microsoft-teams
brew install --cask raindropio
brew install --cask rectangle
brew install --cask spotify
brew install --cask toggl-track
brew install --cask the-unarchiver
brew install --cask zoom

# Personal
echo "Installing personal apps..."
brew install --cask steam

# VS Code Extensions
echo "Installing vs code extensions..."
cat vscode-extensions.txt | xargs -L1 code --install-extension
