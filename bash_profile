# Load in the git branch prompt script.
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true


export PATH="/Applications/MacVim.app/Contents/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="😎  @\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[\033[1;35m\]\$(__git_ps1): \[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"


alias ll='ls -lahFG'
alias gg='git status -s'
alias gitadog='git log --all --decorate --oneline --graph'
