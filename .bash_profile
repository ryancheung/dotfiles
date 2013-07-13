#
# ~/.bash_profile
#

export CLICOLOR=1

export TERM="xterm-color"
export PS1="\[\e[0;33m\]\u\[\e[m\]@\[\e[0;34m\]\h\[\e[m\]:\w\[\e[0;32m\]\[\e[m\]\n\[\e[0;35m\]$\[\e[m\] "

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
. ~/.rbenv/completions/rbenv.bash

[[ -f ~/.bashrc ]] && . ~/.bashrc
