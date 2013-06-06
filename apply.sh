#!/bin/bash

for file in .[^.]*; do
  [ $file != ".git" ] && (cd ~/; ln -sf ~/dotfiles/$file .) && echo "$file linked."
done
