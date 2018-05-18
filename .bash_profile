#
# ~/.bash_profile
#

export PS1="\[\e[0;33m\]\u\[\e[m\]@\[\e[0;34m\]\h\[\e[m\]:\w\[\e[0;32m\]\$(__git_ps1 '(%s)')\[\e[m\]\n\[\e[0;35m\]$\[\e[m\] "
export EDITOR=vim
export CLICOLOR=1

# git prompt for Linux
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
  . /usr/share/git/completion/git-prompt.sh
fi

# linux completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Bash completion for mac
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# fix PATH in tmux for homebrew
PATH="/usr/local/bin:$PATH"

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
PATH="$HOME/.rbenv/shims:$PATH"
. ~/.rbenv/completions/rbenv.bash

export GOPATH=$HOME/go-app
export GOBIN=$HOME/go-app/bin

PATH="$GOBIN:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc
shopt -s globstar

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# use homebrew curl
export PATH="/usr/local/Cellar/curl/7.54.0/bin:$PATH"

# vcpkg
export PATH="~/vcpkg:$PATH"

#export PATH="/usr/local/sbin:$PATH"
#export PATH="/usr/local/opt/llvm/bin:$PATH"
#export export CC=`which clang`
#export export CXX=`which clang++`

export http_proxy="http://127.0.0.1:1087"
export https_proxy="http://127.0.0.1:1087"
