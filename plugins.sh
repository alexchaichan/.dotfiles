#!/usr/bin/env bash

# zsh

function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$ZDOTDIR/$PLUGIN_NAME"
}

source $DOTFILES/zsh/plugins.sh

for i in $zsh_plugins;
  do zsh_add_plugin $i;
done

git clone https://github.com/dracula/zsh-syntax-highlighting.git $ZDOTDIR/dracula-zsh-syntax-highlighting

# vim

function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
}

source $DOTFILES/nvim/plugins.sh

for i in $vim_plugins;
  do vim_add_plugin $i;
done

# tmux

function tmux_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$TDOTDIR/plugins/$PLUGIN_NAME"
}

source $DOTFILES/tmux/plugins.sh

for i in $tmux_plugins;
  do tmux_add_plugin $i;
done
