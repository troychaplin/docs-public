# Homebrew

Read more: https://brew.sh/

### Install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Homebrew Maintenance

- `brew update` - update homebrew
- `brew outdated` - check outdated formulas
- `brew upgrade` - upgrade all formulas
- `brew upgrade <formula>` - update specific formula

### Tools

| Tool         | Command                                          | Notes                                                                                           |
| ------------ | ------------------------------------------------ | ----------------------------------------------------------------------------------------------- |
| Code Sniffer | `brew install homebrew/core/php-code-sniffer`    | Set PSR-12 as the default: `phpcs --config-set default_standard PSR12`                          |
| Composer     | `brew tap homebrew/core ; brew install composer` |                                                                                                 |
| Node         | `brew install node`                              |                                                                                                 |
| PHP          | `brew install php@7.x`                           | Check version: `php -v`; and [check for upgrades](https://formulae.brew.sh/formula/php#default) |
| SASS         | `brew install sass/sass/sass`                    |                                                                                                 |

### Apps

| App        | Command                                | Notes |
| ---------- | -------------------------------------- | ----- |
| Enpass     | `brew cask install enpass`             |       |
| iTerm2     | `brew cask install iterm2`             |       |
| Sequel Pro | `brew cask install sequel-pro`         |       |
| Sourcetree | `brew cask install sourcetree`         |       |
| VirtualBox | `brew cask install virtualbox`         |       |
| VS Code    | `brew cask install visual-studio-code` |       |
