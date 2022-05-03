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

# install homebrew for osx
if [[ "$os" == "osx" ]]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# git
if [[ "$os" == "osx" ]]; then
	brew install git
elfi [[ "$os" == "linux" ]]; then
	pacman -S git
fi

# clone .dotfiles
git clone https://github.com/alexchaichan/.dotfiles.git ~/

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
	brew bundle --file=~/.dotfies/osx/Brewfile
elfi [[ "$os" == "linux" ]]; then
	pacman -S --needed - < ~/.dotfiles/arch/pacman/pacmanfile
fi

# source password-store
source ~/.dotfiles/password-store.sh

# install applications
if [[ "$os" == "osx" ]]; then
	source ~/.dotfiles/osx/wgets.sh
fi

# install repositores
source ~/.dotfiles/repositories.sh

# install crontabs
source ~/.dotfiles/cronbtabs.sh

# install R
source ~/.dotfiles/R/R.sh

# install python packages
source ~/.dotfiles/pip.sh

# make zsh default shell 
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi

# neovim dependencies
gem install neovim
yarn global add neovim
pip3 install neovim
pip3 install pynvim
cd ~/.config/nvim/pack/plugins/start/coc.nvim && yarn install
sudo ln -sf ~/.dotfiles/nvim/spell /usr/local/Cellar/neovim/0.6.1/share/nvim/runtime/

bat ~/.dotfiles/setup/osx/installbyhand.sh
