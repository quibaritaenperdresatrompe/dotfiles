# Credentials
alias gstore="git config credential.helper store"

# Classico aliases
alias gap="git add --patch"

# Pretty git logs
alias glog="git log --pretty='format:
%C(yellow bold)%h%Creset%C(auto)%d
%Creset%C(bold)%s
%Creset%cr by %cn'"

# Undo last commit
function gundo() {
  git reset --soft HEAD~1 &&
    git reset .
}

# Create a feature branch
function gbf() {
  if [ -z "$1" ]; then
    red 'creating feature branch: missing required argument branch name'
  else
    branch=$(echo $1 | sed 's/-/_/g')
    git checkout -b feature/$branch
  fi
}

# Create a hotfix branch
function gbh() {
  if [ -z "$1" ]; then
    red 'creating hotfix branch: missing required argument branch name'
  else
    branch=$(echo $1 | sed 's/-/_/g')
    git checkout -b hotfix/$branch
  fi
}

# Create a release candidate branch
function gbrc() {
  if [ -z "$1" ]; then
    red 'creating release candidate branch: missing required argument branch name'
  else
    branch=$(echo $1 | sed 's/-/_/g')
    git checkout -b rc/$branch
  fi
}

# Remove all branches
alias gbr="git branch | grep -v "master" | xargs git branch -D"

# Rebase
alias grm="git rebase master"
alias grc="git rebase --continue"
alias grs="git rebase --skip"

# Reset
alias gr="git reset ."
