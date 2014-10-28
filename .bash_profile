export PATH=/usr/local/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# rbenv
eval "$(rbenv init -)"

# Git Aliases
alias st='git status'
alias co='git checkout'
alias ci='git commit'
alias rb='git rebase'
alias br='git branch'
alias pll='git pull'
alias pu='git push'
alias dif='git diff'

# Refresh Shell
alias reload='source ~/.bash_profile'

# Colors
ENDCOLOR='\[\033[0m\]'

DARKGRAY='\[\033[1;30m\]'
LIGHTRED='\[\033[1;31m\]'
LIGHTGREEN='\[\033[1;32m\]'
LIGHTBROWN='\[\033[1;33m\]'
LIGHTBLUE='\[\033[1;34m\]'
LIGHTPURPLE='\[\033[1;35m\]'
LIGHTCYAN='\[\033[1;36m\]'

BLACK='\[\033[0;30m\]'
RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
BROWN='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
PURPLE='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'

# Show clean/dirty state for Git in prompt
export GIT_PS1_SHOWDIRTYSTATE=1

# Change prompt
PS1_OLD=${PS1}

export PS1="$CYAN\!$ENDCOLOR $GREEN[\u$ENDCOLOR $LIGHTRED\w$ENDCOLOR$GREEN]$ENDCOLOR "


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PYTHONDONTWRITEBYTECODE=true
