# Git branch Commands
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{248}'
COLOR_DIR='%F{30}'
COLOR_GIT='%F{3}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '

#-------------------------------------------------------------
# Git Alias Commands
#-------------------------------------------------------------
alias ga="git add"
alias gaa="git add ."
alias gau="git add -u"
alias gc="git commit -m"
alias gca="git commit -am"
alias gb="git branch"
alias gbd="git branch -d"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gt="git stash"
alias gta="git stash apply"
alias gm="git merge"
alias gr="git rebase"
alias gl="git log --oneline --decorate --graph"
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset 
-%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' 
--abbrev-commit --"
alias glga="git log --graph --oneline --all --decorate"
alias gb="git branch"
alias gs="git status"
alias gd="diff --color --color-words --abbrev"
alias gdc="git diff --cached"
alias gbl="git blame"
alias gp="git push"
alias gpl="git pull"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gk="gitk --all&"
alias gx="gitx --all"
alias k=kubectl


export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="${HOME}/.pyenv/shims:${PATH}"
export GOPATH=/Users/webhooked/go
export GOROOT=/usr/local/go
export GOBIN=/Users/webhooked/go/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/go/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/webhooked/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/webhooked/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/webhooked/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/webhooked/google-cloud-sdk/completion.zsh.inc'; fi
