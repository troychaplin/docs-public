#!/bin/bash

echo "Setting up Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Tapping additional Homebrew repositories..."
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

echo "Running Brewfile to install packages..."
brew bundle --file="./Brewfile"

# Optional: Install Rosetta for compatibility with Intel-based applications
echo "Installing Rosetta..."
sudo softwareupdate --install-rosetta --agree-to-license

echo "Applying macOS preferences..."
# Dock auto-hide
defaults write com.apple.dock autohide -bool true && killall Dock
# Show Finder path bar
defaults write com.apple.finder ShowPathbar -bool true && killall Finder
# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Setting up Zsh with Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create NVM Directory for Node Version Manager
mkdir -p ~/.nvm

echo "Applying Git and Zsh aliases..."
# Git aliases
echo "alias gs='git status'" >> ~/.zshrc
echo "alias ga='git add'" >> ~/.zshrc
echo "alias gc='git commit -m'" >> ~/.zshrc
echo "alias gp='git push'" >> ~/.zshrc

# Zsh aliases
echo "alias ll='ls -la'" >> ~/.zshrc

# PHP Coding Standards Setup
echo "Setting up PHP CodeSniffer with PSR-2 and WordPress standards..."
brew install php-code-sniffer

# Install WordPress Coding Standards
composer global require "wp-coding-standards/wpcs"
phpcs --config-set installed_paths "$HOME/.composer/vendor/wp-coding-standards/wpcs"

# Configure Aliases for Coding Standards
echo "Adding phpcs aliases to switch coding standards..."
echo "alias phpcs-psr2='phpcs --standard=PSR2'" >> ~/.zshrc
echo "alias phpcs-wp='phpcs --standard=WordPress'" >> ~/.zshrc

# Optional: Set Default Standard
phpcs --config-set default_standard PSR2  # Change to WordPress if desired

# Source the .zshrc to apply changes
source ~/.zshrc

echo "macOS setup complete! 🎉"
echo "Reminder: Sync dotfiles and set up any additional configurations as needed."
