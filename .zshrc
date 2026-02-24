if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# UPDATE PATH
# add Qt5.15 (for PingViewer)
# export PATH="/usr/local/opt/qt@5/bin:$PATH"

# DOCKER
# % brew install docker colima
# % colima start (or % brew services start colima, to restart at login
# % docker build . -t ardupilot --build-arg USER_UID=$(id -u) --build-arg USER_GID=1111
# enter the ArduPilot docker container
alias apdocker='colima start && docker run --rm -it -v "$(pwd):/ardupilot" -u "$(id -u):$(id -g)" ardupilot:latest bash'

# GIT
# current changes
alias g='git status'
# difference from last commit
alias gd='git diff'
# commit file(s)
alias gc='git commit '
# commit all added files with a message
alias gcam='git commit -am '
# update from remote
alias gpull='git pull'
# update from origin master
alias gpullom='git pull origin master'
# push latest commits to remote
alias gpush='git push'
# add the current directory
alias gad='git add .'
# add specified files
alias ga='git add '
# move the specified file
alias gm='git mv '
# look at history (commit log)
alias gl='git log'
# add a remote to pull from (gra name https://github.com/someone-else/repo-name)
alias gra='git remote add'
# list available branches (and indicate current)
alias gbls='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD) %(align:23)(%(color:yellow)%(committerdate:relative)%(color:reset))%(end) %(if)%(HEAD)%(then)%(color:reset bold)%(else)%(color:green)%(end)%(refname:short)%(color:reset)"'
# delete a branch (that has been merged in somewhere)
alias gbrm='git branch -d'
# checkout a branch
alias gb='git checkout --recurse-submodules'
# checkout a new branch
alias gbranch='git checkout -b '
# checkout to master branch
alias gmaster='git checkout --recurse-submodules master'
# checkout to main branch (new default 'master')
alias gmain='git checkout --recurse-submodules main'
# checkout a pull request to the upstream repo
gpr () { git fetch upstream pull/$1/head && gb FETCH_HEAD }
# merge specified branch to this one, with commit messages kept
alias gmerge='git merge --no-ff '
# delete specified branch
alias gdelb='git branch -d '
# recursively get required submodules
alias gsubi='git submodule update --init --recursive'
# add a repo branch as a submodule
#  e.g. gsuba -b <branch> <repo> <path>
alias gsuba='git submodule add '
# rebase interactively
alias grebi='git rebase -i '
# rebase over upstream (main/master)
alias grebase_over='git pull --rebase origin '
# auto-create fixups from staged (or all if nothing staged)
alias gabar='git absorb --and-rebase'
# re-authenticate from an expired PAT (add new PAT on next push)
alias greauth='git credential-osxkeychain erase'
# clone a repo
alias gcl='git clone '
# cloning shortcut variables
export MYREPO='https://ES-Alexander@github.com/ES-Alexander'
export BRREPO='https://ES-Alexander@github.com/bluerobotics'
export GH='https://github.com'

# Google Chrome
alias chrome='open -a "Google Chrome" '

# styling
PROMPT='%F{32}%n%f%F{99}@%m%f %B%F{240}%1~%f%b %# '
RPROMPT='%F{99}%*%f'
export PATH=/opt/gcc-arm-none-eabi-10-2020-q4-major/bin:$PATH
export PATH=/Users/eliots/Documents/Work/BlueRobotics/code/ardusub-SITL/ardupilot-build/Tools/autotest:$PATH
#source /Users/eliots/Documents/Work/BlueRobotics/code/ardusub-SITL/ardupilot-build/Tools/completion/completion.zsh
