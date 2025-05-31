# GitHub Basics

## Init Local Folder

```
git init
git branch -m main
git add .
git commit -m "Initial commit message"
git remote add origin <AddRemoteURL>
git remote -v
git push origin main
```

## Branching

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
- `git branch -m` - Rename branch

**Merge Branches**

- `git checkout BranchToMergeInto` - switch to branch you are merging into
- `git merge BranchName` - merge branch into the current branch

**Deleting Branches**

- `git push origin --delete BranchName` - delete remote branch
- `git branch -d BranchName` - delete branch (only if already merged)
- `git branch -D BranchName` - force delete unmerged branch

**Other Commands**

- `git remote update origin --prune` - prune list of branches
