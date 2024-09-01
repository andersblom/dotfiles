alias gcpx='git cherry-pick -x'
alias gcpa='git cherry-pick --abort'
alias gcob='git checkout -b'
alias gcod='git checkout dev'
alias gcos='git checkout staging'
alias gcom='git checkout master'
alias gp='git pull'
alias gfd='git fetch origin dev:dev'
alias gfs='git fetch origin staging:staging'
alias grh='git reset HEAD~1'
alias grhh='grh --hard'
alias grb="git rebase"
alias grbc="git rebase --continue"
alias grba="git rebase --abort"

alias push="gpc"
alias yeet="gpc"
alias yoink="gfc"

gpc () {
  git push origin $(git name-rev --name-only HEAD)
}

gfc () {
  git pull origin $(git name-rev --name-only HEAD)
}

