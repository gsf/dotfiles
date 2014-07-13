# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

PS1='\$ '

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -F'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Git completion for OS X based on
# http://denis.tumblr.com/post/71390665/adding-bash-completion-for-git-on-mac-os-x-snow-leopard
if [ -f "$HOME/.git-completion.bash" ]; then
    . "$HOME/.git-completion.bash"
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD}\007"'
    ;;
# special escaping for Screen
screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME}:${PWD}\033\\"'
    ;;
*)
    ;;
esac

# dum svn/w2h aliases
alias svnup='svn up --ignore-externals'
alias svnst='svn st --ignore-externals | grep -v ^X'
alias grrep='find * -regex "tags\|cache\|data\|log\|node_modules" -prune -o -type f -print | xargs grep -n'

# ctags
alias gentags='find . -name "*.php" | ctags -L -'

# https://github.com/wyrfel/Symfony-Bash-Completion-Script
[ -f "$HOME/.bash_completion.d/symfony" ] && . "$HOME/.bash_completion.d/symfony"

ED='rlwrap -b "" -e "" -c ed'
alias e=$ED
export EDITOR=$ED

# Set term to 256 for gray tmux status line, etc.
# from http://vim.wikia.com/wiki/256_colors_in_vim
if [ -e /usr/share/terminfo/x/xterm-256color ]
then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

# irssi needs a screen term
alias irssi='TERM=screen-256color irssi'
