# Homebrew Script for OSX

To execute: save and `chmod +x ./macos-fresh-install.sh` then `./macos-fresh-install.sh`

## Backups

Don't be dumb, backup all this shit before you format or you will regret it.

Don't forget to save/export:

- SSH keys
- SFTP configs
- Hosts file (`sudo vi /etc/hosts`) -- maybe not needed but just in case
- vscode `settiongs.json`
- Sequel Pro connection exports
- Remote desktop connections
- Enpass

## Git Push Issues

```
git remote -v
git remote remove origin
git remote add origin git@github.com:user/repo.git
```

If issues persiste, also run `git push --set-upstream origin master`
