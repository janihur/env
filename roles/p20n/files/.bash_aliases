# -*- mode: sh -*-

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[01;33m\]$(__git_ps1 "[%s]")\[\033[00m\]\n\[\033[01;34m\]\W\[\033[00m\]\$ '

alias c=batcat
alias e='emacsclient -t'
alias g=git
alias gl='git log -3 --name-status'
alias s=less
alias t='tig status'

alias linux-update='sudo apt update && apt list --upgradeable'

if [ -f ~/.bash_user ]; then
    . ~/.bash_user
fi
