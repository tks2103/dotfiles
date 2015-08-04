export PATH=/usr/local/bin:$PATH

eval "$(rbenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Git Aliases
alias af='arc feature'
alias st='hg status'
alias co='hg checkout'
alias ci='git commit'
alias rb='hg rebase'
alias br='hg bookmark'
alias pll='git pull'
alias pu='git push'
alias dif='hg diff'
alias ap='arc pull'
alias sl='hg sl'

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

# Change prompt
PS1_OLD=${PS1}

export EDITOR=vim
export PS1="$CYAN\!$ENDCOLOR $GREEN[\u$ENDCOLOR $LIGHTRED\w$ENDCOLOR$GREEN]$ENDCOLOR "

eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

export PYTHONDONTWRITEBYTECODE=1

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
