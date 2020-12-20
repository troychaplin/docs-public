# Homebrew Script for OSX

To execute: save and `chmod +x ./macInstall.sh` then `./macInstall.sh`

## Backups

Don't be dumb, backup all this shit before you format or you will regret it.

Don't forget to save/export:

- Enpass export
- Sequel pro connections
- Remote desktop connections
- SSH keys
- Transmit connections
- VS code settings.json

## Git Push Issues

```
git remote -v ; git remote remove origin
git remote add origin git@github.com:troychaplin79/repo.git
```

If issues persiste, also run `git push --set-upstream origin master`

## Props

This setup script was built referencing ideas from:

- https://github.com/marceloglacial/macos-fresh-install
- https://github.com/maxyermayank/developer-mac-setup
