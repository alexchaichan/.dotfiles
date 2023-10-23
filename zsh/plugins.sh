#!/usr/bin/env bash

git clone https://github.com/dracula/zsh-syntax-highlighting.git $ZDOTDIR/dracula-zsh-syntax-highlighting

zsh_plugins=(
  'ohmyzsh/ohmyzsh'
  'romkatv/powerlevel10k'
  'hlissner/zsh-autopair'
  'zsh-users/zsh-autosuggestions'
  'zsh-users/zsh-completions'
  'zsh-users/zsh-syntax-highlighting'
)
