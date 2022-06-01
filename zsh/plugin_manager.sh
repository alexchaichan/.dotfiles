#!/usr/bin/env bash

function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$ZDOTDIR/$PLUGIN_NAME"
}

source $DOTFILES/zsh/plugins.sh

for i in $zsh_plugins;
  do zsh_add_plugin $i;
done

git clone https://github.com/dracula/zsh-syntax-highlighting.git $ZDOTDIR/dracula-zsh-syntax-highlighting