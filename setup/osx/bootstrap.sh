# make osx system changes
source ~/.dotfiles/setup/osx/.macos

# create symlinks from .dotfiles repo
source ~/.dotfiles/setup/osx/stowfile.sh

# install plugins for zsh / neovim / tmux
source ~/.dotfiles/setup/osx/plugins.sh

# install the Brewfile
brew bundle --file=~/.dotfies/setup/osx/Brewfile

# source password-store
source ~/.dotfiles/setup/osx/password-store.sh

# install applications
source ~/.dotfiles/setup/osx/wgets.sh

# install repositores
source ~/.dotfiles/setup/osx/repositories.sh

# install crontabs
source ~/.dotfiles/setup/osx/cronbtabs.sh

# install R packages
Rscript ~/.dotfiles/setup/osx/packages.R

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
