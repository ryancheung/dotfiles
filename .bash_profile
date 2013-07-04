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
export PS1="\e[0;33m\u\e[m@\e[0;34m\h\e[m:\w\e[0;32m\$(__git_ps1 '(%s)')\e[m\n\e[0;35m$\e[m "

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
# Fix rbenv in tmux
PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
. ~/.rbenv/completions/rbenv.bash

[[ -f ~/.bashrc ]] && . ~/.bashrc
