View and Compare: https://gist.github.com/marceloglacial/caff44b45e39e420283c9ef1004ef11c

# Mac Config

- [Homebrew Formulae](https://formulae.brew.sh/cask/)

## Dev & System Tools

### Homebrew

[Read more](http://brew.sh/) about homebrew. Once homebrew is installed, run `brew install wget` to installs the stuff you need that Apple does not install.

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Update Ruby and All Gems

```
sudo gem update
```

### Upgrade PHP

Check php version with `php -v`, and upgrade to 7.x if necessary

```
brew install php@7.x
```

### VirtualBox

```
brew cask install virtualbox
```

### Node.js

Read more about node.js

```
brew install node
```

### SASS

```
brew install sass/sass/sass
```

### Composer

```
brew tap homebrew/core
brew install composer
```

### Generate keys

Note: .ssh folder doesn't exist by default on clean mac install

```
ssh-keygen
```

### Code Sniffer

```
brew install homebrew/core/php-code-sniffer
```

Set PSR-12 as the default:

```
phpcs --config-set default_standard PSR12
```

### PHP Code Beautifier and Fixer

```
curl -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar -o phpcbf.phar
chmod a+x phpcbf.phar
sudo mv phpcbf.phar /usr/local/bin/phpcbf
```

## Software

### Virtual Studio Code

```
brew cask install visual-studio-code
```

### iTerm2

```
brew cask install iterm2
```

### Sequel Pro

```
brew cask install sequel-pro
```

### SourceTree

```
brew cask install sourcetree
```

### Local by Flywheel

```
brew cask install local
```

### 1Password

```
brew cask install 1password
```

## VS Code Extensions

- [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
- [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
- [Coddx](https://marketplace.visualstudio.com/items?itemName=coddx.coddx-alpha)
- [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
- [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Git File History](https://marketplace.visualstudio.com/items?itemName=pomber.git-file-history)
- [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [GraphQL for VSCode](https://marketplace.visualstudio.com/items?itemName=kumar-harsh.graphql-for-vscode)
- [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
- [IntelliSense for CSS class names in HTML](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)
- [JIRA and Bitbucket](https://marketplace.visualstudio.com/items?itemName=Atlassian.atlascode)
- [jshint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.jshint)
- [php cs fixer](https://marketplace.visualstudio.com/items?itemName=junstyle.php-cs-fixer)
- [PP Debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)
- [PHP IntelliSense](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-intellisense)
- [PHP Sniffer](https://marketplace.visualstudio.com/items?itemName=wongjn.php-sniffer)
- [phpcs](https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs)
- [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Simple React Snippets](https://marketplace.visualstudio.com/items?itemName=burkeholland.simple-react-snippets)
- [stlyeline-plus](https://marketplace.visualstudio.com/items?itemName=hex-ci.stylelint-plus)
- [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
- [Twig Language 2](https://marketplace.visualstudio.com/items?itemName=mblode.twig-language-2)
- [Version Lens](https://marketplace.visualstudio.com/items?itemName=pflannery.vscode-versionlens)
- [vscode-workspace-switcher](https://marketplace.visualstudio.com/items?itemName=sadesyllas.vscode-workspace-switcher)
- [WakaTime](https://marketplace.visualstudio.com/items?itemName=WakaTime.vscode-wakatime)
- [WordPress Snippet](https://marketplace.visualstudio.com/items?itemName=tungvn.wordpress-snippet)

## Other VS Code Extensions

- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
- [Nord](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code)
- [phpcbf](https://marketplace.visualstudio.com/items?itemName=persoderlind.vscode-phpcbf)
- [TODO Highlighter](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
