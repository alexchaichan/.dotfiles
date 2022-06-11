#!/usr/bin/env bash

function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
}

source $DOTFILES/nvim/plugins.sh

for i in $vim_plugins;
  do vim_add_plugin $i;
done
