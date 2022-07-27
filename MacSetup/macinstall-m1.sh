echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap 'homebrew/cask'
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

echo "Updating homebrew..."
brew update
brew upgrade

echo "Insalling Oh My ZSH..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Support non-m1 shit..."
sudo softwareupdate --install-rosetta

# Dev Tools
echo "Installing dev tools..."
brew install composer
brew install git
brew install git-flow
brew install node
brew install nvm
brew install php
brew install php-code-sniffer
brew install yarn
brew install --cask xquartz

# PHP Standards
# phpcs --config-set default_standard PSR2

# Browsers
echo "Installing work apps..."
brew install --cask brave-browser
brew install --cask docker
brew install --cask figma
brew install --cask firefox-developer-edition
brew install --cask microsoft-teams
brew install --cask postman
brew install --cask sequel-pro
brew install --cask transmit
brew install --cask visual-studio-code
brew install --cask warp

# Design
echo "Installing others..."
brew install --cask 1password
brew install --cask fig
brew install --cask font-fira-code
brew install --cask memory-clean-3
brew install --cask rectangle
brew install --cask steam
brew install --cask the-unarchiver
brew install --cask zoom
