## Git Flow

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
