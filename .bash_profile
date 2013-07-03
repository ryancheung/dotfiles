#
# ~/.bash_profile
#

# Fix brew path
PATH="/usr/local/bin:$PATH"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1

export TERM="xterm-color"
export PS1="\u@\h:\w\$(__git_ps1 '(%s)')\n$ "

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
# Fix rbenv in tmux
PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
. ~/.rbenv/completions/rbenv.bash

[[ -f ~/.bashrc ]] && . ~/.bashrc
