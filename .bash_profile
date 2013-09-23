#
# ~/.bash_profile
#

# Git prompt for Arch
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
  . /usr/share/git/completion/git-prompt.sh
fi

export PS1="\[\e[0;33m\]\u\[\e[m\]@\[\e[0;34m\]\h\[\e[m\]:\w\[\e[0;32m\]\$(__git_ps1 '(%s)')\[\e[m\]\n\[\e[0;35m\]$\[\e[m\] "
export EDITOR=vim
export CLICOLOR=1
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Bash completion for mac
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
. ~/.rbenv/completions/rbenv.bash

[[ -f ~/.bashrc ]] && . ~/.bashrc
