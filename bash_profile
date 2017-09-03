# Load in the git branch prompt script.
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true


export PATH="/Applications/MacVim.app/Contents/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="😎  @\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[\033[1;35m\]\$(__git_ps1): \[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"


alias ll='ls -lahFG'
alias gg='git status -s'
