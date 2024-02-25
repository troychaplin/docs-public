# Mac Config

To become a set of dot files

- https://github.com/webpro/awesome-dotfiles

# Homebrew Script for OSX

To execute: save and `chmod +x ./macInstall.sh` then `./macInstall.sh`

## Backups

Don't be dumb, backup all this shit before you format or you will regret it.

Don't forget to save/export:

- SSH keys
- Sequel pro connections
- Transmit connections
- Remote desktop connections

## Other Installs

- Xcode - `xcode-select --install`
- [How to Install Ruby on Mac OS X with RVM](https://usabilityetc.com/articles/ruby-on-mac-os-x-with-rvm/) (see following)

```
brew install gnupg
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

## Props

This setup script was built referencing ideas from:

- https://github.com/marceloglacial/macos-fresh-install
- https://github.com/maxyermayank/developer-mac-setup
