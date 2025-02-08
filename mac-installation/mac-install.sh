#!/bin/bash

set -e

echo "Setting up Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Homebrew to PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

install_cask() {
    if brew list --cask "$1" &>/dev/null; then
        echo "$1 is already installed. Skipping..."
    else
        brew install --cask "$1"
    fi
}

install_brew() {
    if brew list "$1" &>/dev/null; then
        echo "$1 is already installed. Skipping..."
    else
        brew install "$1"
    fi
}

echo "Installing essential applications..."
install_cask brave-browser
install_cask docker
install_cask figma
install_cask firefox@developer-edition
install_cask google-chrome
install_cask microsoft-edge
install_cask postman
install_cask tableplus
install_cask visual-studio-code
# install_cask warp

echo "Installing developer tools..."
install_brew composer
install_brew git
install_brew node
install_brew php
install_brew php-code-sniffer
install_brew wp-cli
install_brew yarn

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo "Installing productivity tools..."
install_cask 1password
install_cask font-fira-code
install_cask memory-clean-3
install_cask raindropio
install_cask rectangle
install_cask slack
install_cask zoom

echo "Installing Xcode Command Line Tools..."
xcode-select --install

read -p "Do you want to install the full Xcode app? (y/n) " install_xcode
if [[ $install_xcode == "y" ]]; then
    install_cask xcode
fi

echo "Installing Rosetta..."
sudo softwareupdate --install-rosetta --agree-to-license

echo "Applying macOS preferences..."
defaults write com.apple.dock autohide -bool true && killall Dock
defaults write com.apple.finder ShowPathbar -bool true && killall Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Setting up Zsh with Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p ~/.nvm

echo "Applying Git and Zsh aliases..."
echo "alias gs='git status'" >> ~/.zshrc
echo "alias ga='git add'" >> ~/.zshrc
echo "alias gc='git commit -m'" >> ~/.zshrc
echo "alias gp='git push'" >> ~/.zshrc
echo "alias ll='ls -la'" >> ~/.zshrc

echo "Setting up PHP CodeSniffer with PSR-2 and WordPress standards..."
composer global require "wp-coding-standards/wpcs"
phpcs --config-set installed_paths "$HOME/.composer/vendor/wp-coding-standards/wpcs"
echo "alias phpcs-psr2='phpcs --standard=PSR2'" >> ~/.zshrc
echo "alias phpcs-wp='phpcs --standard=WordPress'" >> ~/.zshrc
phpcs --config-set default_standard PSR2

# Add nvm initialization to .zshrc
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc

# Source the .zshrc file to apply changes
source ~/.zshrc

# Verify nvm installation
if command -v nvm &> /dev/null; then
    echo "nvm is installed and initialized successfully."
else
    echo "nvm installation or initialization failed."
fi

echo "macOS setup complete! 🎉"
echo "Reminder: Sync dotfiles and set up any additional configurations as needed."