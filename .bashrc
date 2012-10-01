if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
fi

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
GRAY="\[\033[00m\]"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true
#export GIT_PS1_SHOWUPSTREAM="verbose"
export PS1="$RED\$(date +%H:%M)$GREEN \u@\h$BLUE \w$YELLOW\$(__git_ps1 ' %s')\n$BLUE\$$GRAY "
