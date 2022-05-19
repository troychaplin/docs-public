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

echo "Support old shit...?"
sudo softwareupdate --install-rosetta

# Dev Tools
echo "Installing dev tools..."
brew install composer
brew install node
brew install yarn
brew install git
brew install git-flow
# brew install git-flow-avh
brew install --cask fig

# Browsers
echo "Installing browsers..."
brew install --cask brave-browser
brew install --cask firefox-developer-edition


# Design
echo "Installing development apps..."
brew install --cask font-fira-code
# brew install --cask iterm2
brew install --cask warp
brew install --cask postman
brew install --cask sequel-pro
brew install --cask transmit
brew install --cask visual-studio-code

# Design
echo "Installing design apps..."
brew install --cask figma

# Productivity
echo "Installing productivity apps..."
brew install --cask 1password
brew install --cask memory-clean-3
brew install --cask microsoft-teams
brew install --cask raindropio
brew install --cask rectangle
brew install --cask toggl-track
brew install --cask the-unarchiver
brew install --cask zoom

# Personal
echo "Installing personal apps..."
brew install --cask steam

# VS Code Extensions
# echo "Installing vs code extensions..."
# cat vscode-extensions.txt | xargs -L1 code --install-extension
