## Git Flow

- Configuraion and overview: [Git-flow Cheatsheet](https://danielkummer.github.io/git-flow-cheatsheet/index.html)
- Where credit is due: [Git Branches - Noble Desktop](https://www.nobledesktop.com/learn/git/git-branches) and [Git-flow Breakdown - GitHub Gist](https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac)

**Initialize Branch**

- `git flow init` - initialize the branch

**Feature Branches**

- `git flow feature start FeatureBranchName` - create a feature branch
- `git flow feature publish FeatureBranchName` - push feature to remote
- `git flow feature pull origin FeatureBranchName` - pull latest commits from remote
- `git flow feature finish FeatureBranchName` - finalize a feature

**Releases Branches**

- `git flow release start 0.0.0` - create release branch
- `git flow release publish 0.0.0` - push release to remote
- `git flow release finish 0.0.0` - finalize a release

**Hotfix Branches**

- `git flow hotfix start 0.0.0` - create hotfix branch
- `git flow hotfix finish 0.0.0` - finalize a hotfix

## Git Basics and Branching

**Basic Commands**

- `git status` - get status of current branch
- `git push` - push commits to remote branch
- `git pull` - get commits om remote for current branch
- `git fetch` - get commits on remote but do not merge into current branch

**Adding Tags**

- `git tag 0.0.0` - add tag
- `git push origin --tags` - push all tags

**Browsing Branches**

- `git branch` - list all local branches
- `git branch -r` - list all remote branches
- `git branch -a` - list all local and remote branches

**Basic Branching**

- `git checkout -b BranchName` - create new branch
- `git push -u origin BranchName` - push local to remote (if it doesn't exist)
- `git checkout BranchName` - switch to local branch
- `git checkout --track origin/BranchName` - switch to remote branch

**Merge Branches**

- `git checkout BranchToMergeInto` - switch to branch you are merging into
- `git merge BranchName` - merge branch into the current branch

**Deleting Branches**

- `git push origin --delete BranchName` - delete remote branch
- `git branch -d BranchName` - delete branch (only if already merged)
- `git branch -D BranchName` - force delete unmerged branch

## Git Push Issues

```
git remote -v ; git remote remove origin
git remote add origin git@github.com:troychaplin79/repo.git
```

If issues persiste, also run `git push --set-upstream origin master`
