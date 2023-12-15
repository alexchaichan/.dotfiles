#!/usr/bin/env bash

export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export DOTFILES=$HOME/.dotfiles

# osx
export SUBL=$HOME/Library/Application\ Support/Sublime\ Text/

subl --command "install_package_control"
pkill subl

sudo mkdir $SUBL ; sudo mkdir $SUBL/Packages ; sudo mkdir $SUBL/Packages/User
sudo ln -sf $DOTFILES/sublime_text/Sublime\ Text/Packages/User/* $SUBL/Packages/User/
sudo ln -sf $DOTFILES/sublime_text/Sublime\ Text/Packages/Dracula\ Color\ Scheme $SUBL/Packages/
sudo cp -f $DOTFILES/sublime_text/Sublime\ Text/Packages/User/Preferences.sublime-settings $SUBL/Packages/User/

# arch
export SUBL=$HOME/.config/sublime-text/

mkdir $SUBL ; sudo mkdir $SUBL/Packages ; sudo mkdir $SUBL/Packages/User

subl --command "install_package_control"
pkill subl

sudo ln -sf $DOTFILES/sublime_text/Sublime\ Text/Packages/User/* $SUBL/Packages/User/
sudo ln -sf $DOTFILES/sublime_text/Sublime\ Text/Packages/Dracula\ Color\ Scheme $SUBL/Packages/
ln -sf $DOTFILES/sublime_text/Sublime\ Text/Packages/User/Preferences_arch.sublime-settings $SUBL/Packages/User/Preferences.sublime-settings
