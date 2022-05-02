# make osx system changes
source ~/.dotfiles/setup/osx/.macos
# create all symlinks from .dotfiles repo
source ~/.dotfiles/setup/osx/symlinks.sh
# install plugins for zsh / neovim / tmux
source ~/.dotfiles/setup/osx/pluginmanager.sh
# install the Brewfile
brew bundle --file=~/.dotfies/setup/osx/Brewfile
# install R packages
Rscript ~/.dotfiles/setup/osx/packages.R

# make zsh default shell 
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi

# pandoc
git clone https://github.com/pandoc/lua-filters.git ~/.local/share/pandoc/filters

# spotify
mkdir ~/.config/spotify-tui && echo | pass spotify-tui > ~/.config/spotify-tui/client.yml && ln -sf ~/.dotfiles/spotify/spotify-tui/config.yml ~/.config/spotify-tui
mkdir ~/.cache/spotifyd && echo | pass spotifyd > ~/.cache/spotifyd/credentials.json

# required for some downloads
echo '[build_ext]
include_dirs=/opt/X11/include
library_dirs=/opt/X11/lib' >> ~/.pydistutils.cfg


# neovim dependencies
gem install neovim
yarn global add neovim
pip3 install neovim
pip3 install pynvim
cd ~/.config/nvim/pack/plugins/start/coc.nvim && yarn install
sudo ln -sf ~/.dotfiles/nvim/spell /usr/local/Cellar/neovim/0.6.1/share/nvim/runtime/

# rstudio
ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio
ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets

git clone https://github.com/alexchaichan/.password-store.git ~/.password-store 

bat ~/.dotfiles/setup/osx/installbyhand.sh
