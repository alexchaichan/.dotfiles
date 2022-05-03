
# check for os type
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

# make osx system changes
if [[ "$os" == "osx" ]]; then
	source ~/.dotfiles/setup/osx/.macos
fi

# create symlinks from .dotfiles repo
source ~/.dotfiles/setup/osx/stowfile.sh

# install plugins for zsh / neovim / tmux
source ~/.dotfiles/setup/osx/plugins.sh

# install Brewfile
if [[ "$os" == "osx" ]]; then
	brew bundle --file=~/.dotfies/setup/osx/Brewfile
fi



# source password-store
source ~/.dotfiles/setup/osx/password-store.sh

# install applications
source ~/.dotfiles/setup/osx/wgets.sh

# install repositores
source ~/.dotfiles/setup/osx/repositories.sh

# install crontabs
source ~/.dotfiles/setup/osx/cronbtabs.sh

# install R
source ~/.dotfiles/R/R.sh

# install python packages
source ~/.dotfiles/setup/osx/pip.sh

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
