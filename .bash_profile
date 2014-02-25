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

# Android
PATH="/Applications/Android Studio.app/sdk/platform-tools:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc
