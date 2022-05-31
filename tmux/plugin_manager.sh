#!/usr/bin/env bash

# tmux

function tmux_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$TDOTDIR/plugins/$PLUGIN_NAME"
}

source $DOTFILES/tmux/plugins.sh

for i in $tmux_plugins;
  do tmux_add_plugin $i;
done