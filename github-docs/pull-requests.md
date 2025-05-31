## Pull Requests

**Checkout out PR in fork**

- `git remote add GITUSERNAME https://github.com/GITUSERNAME/repository-name.git` - add the contributor’s fork as a remote
- `git fetch GITUSERNAME fork/branch-name` - fetch branch from contributor's fork
- `git checkout -b add/new-branch-name fork/branch-name` - check out a new local branch from the contributor’s branch

**Clean up from PR fork**

- `git remote remove GITUSERNAME` - create a feature branch
- `git branch -D add/new-branch-name` - remove your local test branch
