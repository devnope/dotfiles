# ____                _  _     ____                _
#|  _ \   ___   _ __ ( )| |_  |  _ \  __ _  _ __  (_)  ___
#| | | | / _ \ | '_ \|/ | __| | |_) |/ _` || '_ \ | | / __|
#| |_| || (_) || | | |  | |_  |  __/| (_| || | | || || (__
#|____/  \___/ |_| |_|   \__| |_|    \__,_||_| |_||_| \___|
#
#

LANG=de_DE.UTF-8 
LC_ALL=de_DE.UTF-8
LANGUAGE=de_DE.UTF-8
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar
EDITOR="/usr/bin/env vim"
PAGER="less"
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    source "$HOME"/.bash_aliases
fi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
  elif [ -f /usr/local/etc/bash_completion.d/ ]; then
    source //usr/local/etc/bash_completion.d/*
  fi
fi

#
# HISTFILE - Magic
#
if [[ -n "$SUDO_USER" ]];  then
    HISTFILE=/home/"$SUDO_USER"/.bash_history.sudo.$USER
    else
    HISTFILE=/home/$USER/.bash.hist.$USER
fi

HISTSIZE=3000
HISTFILESIZE=5000
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/sbin:/usr/sbin:/usr/local/sbin
#
# be more colorful
#
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline

[ -z "$PS1" ] && return
green="\[\033[0;32m\]"
blue="\[\033[1;34m\]"
yellow="\[\e[0;33m\]"
grey="\[\033[1;30m\]"
white="\[\033[0m\]"
red="\[\033[1;31m\]"
_EXIT_STATUS_STR=""
_PROMPT() {
         _EXIT_STATUS=$?
                    if [[ $_EXIT_STATUS -eq  0 ]]; then _EXIT_STATUS_STR=""; else  _EXIT_STATUS_STR="$grey[$red$_EXIT_STATUS$grey]";fi
                                PS1="$green[$white\$(date +%k:%M)$green]$yellow $HOSTNAME$grey$_EXIT_STATUS_STR $grey[$white\W$grey]$blue # $white "
                                        
                    unset _EXIT_STATUS_STR
}

PROMPT_COMMAND=_PROMPT

#enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias screen='/usr/bin/screen -D -R'

