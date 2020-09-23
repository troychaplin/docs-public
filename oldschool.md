View and Compare: https://gist.github.com/marceloglacial/caff44b45e39e420283c9ef1004ef11c

# Mac Config

- [Homebrew Formulae](https://formulae.brew.sh/cask/)

## Dev & System Tools

### Update Ruby and All Gems

```
sudo gem update
```

### Generate keys

Note: .ssh folder doesn't exist by default on clean mac install

```
ssh-keygen
```

### Code Sniffer

Set PSR-12 as the default: `phpcs --config-set default_standard PSR12`

### PHP Code Beautifier and Fixer

```
curl -sSL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar -o phpcbf.phar
chmod a+x phpcbf.phar
sudo mv phpcbf.phar /usr/local/bin/phpcbf
```
