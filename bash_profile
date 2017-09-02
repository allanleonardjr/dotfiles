# Load in the git branch prompt script.
source ~/.git-prompt.sh

export PATH="/Applications/MacVim.app/Contents/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="😎  @\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[\033[1;35m\]\$(__git_ps1): \[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"
