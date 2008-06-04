#!/bin/bash

# Alias
alias ls='ls --color=auto'
alias ll='ls --color=auto -lh'
alias la='ls --color=auto -ah'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias c='clear'
alias exit='clear; exit'
alias k='killall'
alias ..='cd ..'
alias vi='vim'
alias y='yaourt'
alias x='exit'
alias dum='du --max-depth=1 -h'
alias dus='du -sh'
alias df='df -h'
alias ncmpc='ncmpc -c'

# Prompt
#PS1='[\u@\h \W]\$ '
PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$ \[\033[00m\]"

# Path
PATH=$PATH:/usr/local/bin:.

#Functions
extract () {
	if [ -f $1 ] ; then
	    case $1 in
		*.tar.bz2)    tar xjf $1        ;;
		*.tar.gz)    tar xzf $1        ;;
		*.bz2)        bunzip2 $1        ;;
		*.rar)        unrar x $1        ;;
		*.gz)        gunzip $1        ;;
		*.tar)        tar xf $1        ;;
		*.tbz2)        tar xjf $1        ;;
		*.tgz)        tar xzf $1        ;;
		*.zip)        unzip $1        ;;
		*.Z)        uncompress $1    ;;
		*)            echo "'$1' cannot be extracted via extract()" ;;
	    esac
	else
	    echo "'$1' is not a valid file"
	fi
}

# Enable bash completion when using sudo
complete -cf sudo

export PATH
export PS1
export OOO_FORCE_DESKTOP=gnome

export SVN_EDITOR='vim'
