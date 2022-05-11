#!/usr/bin/env bash

# ask for the administrator password upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until `.bootstap.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# check for os type
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

# create $ directorys
export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export DOTFILES=$HOME/.dotfiles
export ZDOTDIR=$HOME/zsh
export VDOTDIR=$HOME/.config/nvim
export TDOTDIR=$HOME/.tmux

# make osx system changes
if [[ "$os" == "osx" ]]; then
	source ~/.dotfiles/osx/.macos
fi

# create symlinks from .dotfiles repo
source ~/.dotfiles/stowfile.sh

# install plugins for zsh / neovim / tmux
source ~/.dotfiles/plugins.sh

# install Brewfile / pacmanfile
if [[ "$os" == "osx" ]]; then
	brew bundle --file=~/.dotfiles/osx/Brewfile
elif [[ "$os" == "linux" ]]; then
	pacman -S --needed - < ~/.dotfiles/arch/pacman/pacmanfile
fi

# install applications
if [[ "$os" == "osx" ]]; then
	source ~/.dotfiles/osx/applications.sh
fi

# install repositores
source ~/.dotfiles/repositories.sh

# install crontabs
source ~/.dotfiles/cronbtabs.sh

# install R packages
Rscript ~/.dotfiles/R/packages.R

# install python packages
source ~/.dotfiles/pip.sh

# make zsh default shell
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi
