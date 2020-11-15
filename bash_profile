# Hide the "The default interactive shell is now zsh." for macOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load in the git branch prompt script.
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

# Vi mode in Bash
set -o vi

export PATH="/Applications/MacVim.app/Contents/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=~/Library/Python/3.7/bin:$PATH
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

export EDITOR=nvim
export VISUAL="$EDITOR"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1="😎  @\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[\033[1;35m\]\$(__git_ps1): \[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"
export PS1="$(tput sgr0)\]\[\033[38;5;6m\][\w]\[\033[1;35m\]\$(__git_ps1): \[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"


alias ll='ls -lahFG'
alias gg='git status -s'
alias gitadog='git log --all --decorate --oneline --graph'

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh
