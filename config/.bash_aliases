alias aghtml='ag -G html'
alias agdj='ag --ignore=migrations --ignore=logs --ignore=*.map --ignore=watched_assets'
alias agjs='ag -G '"'(js|coffee)$'"
alias agpy='ag -G py --ignore=migrations'
alias agpynt='agpy --ignore=''*test*'''
alias agdjnt='agdj --ignore=''*test*'''

alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up'
alias dr='docker run -it --rm'
alias drv='docker run -it --rm -v $PWD:/usr/src/app -w /usr/src/app'

alias gti=git
alias gciane='git commit --amend --no-edit'
alias gd='git diff'
alias gdc='git diff --cached'
alias glns='git log --name-status'
alias glp='git log --patch'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grnc='git revert --no-commit'
alias grne='git revert --no-edit'
