# GitHub Docs
### Basic Commands

- `git status` - get status of current branch
- `git push` - push commits to remote branch
- `git pull` - get commits om remote for current branch
- `git fetch` - get commits on remote but do not merge into current branch

### Git Flow

- `git flow init` - initialize the branch

### Browsing Branches

- `git branch` - list all local branches
- `git branch -r` - list all remote branches
- `git branch -a` - list all local and remote branches

### Basic Branching

- `git checkout -b my-branch-name` - create new branch
- `git push -u origin my-branch-name` - push local to remote (if it doesn't exist)
- `git checkout my-branch-name` - switch to local branch
- `git checkout --track origin/my-branch-name` - switch to remote branch

### Merge Branches

- `git checkout BranchToMergeInto` - switch to branch you are merging into
- `git merge my-branch-name` - merge branch into the current branch

### Deleting Branches

- `git push origin --delete my-branch-name` - delete remote branch
- `git branch -d my-branch-name` - delete branch (only if already merged)
- `git branch -D my-branch-name` - force delete unmerged branch

## Git-Flow Config

- [Git-flow Cheatsheet](https://danielkummer.github.io/git-flow-cheatsheet/index.html)

## Credit

Where credit is due.

- [Git Branches - Noble Desktop](https://www.nobledesktop.com/learn/git/git-branches)
- [Git-flow Breakdown - GitHub Gist](https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac)
