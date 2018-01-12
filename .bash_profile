if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Git Aliases
alias af='arc feature'
alias st='git status'
alias co='git checkout'
alias ci='git commit'
alias rb='git rebase'
alias br='git branch'
alias pll='git pull'
alias pu='git push'
alias dif='git diff'
alias ap='arc pull'
alias sl='hg sl'

# Refresh Shell
alias reload='source ~/.bash_profile; tmux source-file ~/.tmux.conf'

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

set -o vi

# BEGIN: Block added by chef, to set environment strings
# Please see https://fburl.com/AndroidProvisioning if you do not use bash
# or if you would rather this bit of code 'live' somewhere else
. ~/.fbchef/environment
# END: Block added by chef
export FBANDROID_DIR=/Users/tsinha/fbsource/fbandroid
alias quicklog_update=/Users/tsinha/fbsource/fbandroid/scripts/quicklog/quicklog_update.sh
alias qlu=quicklog_update

# added by setup_fb4a.sh
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/tools:${ANDROID_SDK}/platform-tools

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
