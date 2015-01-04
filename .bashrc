# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Short prompt
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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -F'

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix
  then . /etc/bash_completion
fi

# Set the terminal title to user@host/dir
case "$TERM" in
  xterm*|rxvt*|st*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}${PWD}\007"'
    ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME}${PWD}\033\\"'
    ;;
  *)
    ;;
esac

# night of the living ed
export EDITOR='rlfe ed -l'
alias e=$EDITOR

# Pithy dotenv loading in the shell
# Inspired by http://stackoverflow.com/a/21831665/589391 and
# https://github.com/gchaincl/dotenv.sh
dotenv () {
  if [ -e .env ]; then
    while read line; do
      export "$line"
    done < .env
  fi
}

# Run dotenv on login
dotenv

# Run dotenv on every new directory
cd () {
  builtin cd $@
  dotenv
}
