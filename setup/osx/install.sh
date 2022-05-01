source ~/.dotfiles/setup/osx/.macos
source ~/.dotfiles/setup/osx/symlinks.sh
source ~/.dotfiles/setup/osx/pluginmanager.sh
brew bundle --file=~/.dotfies/setup/osx/Brewfile
Rscript ~/.dotfiles/setup/osx/packages.R
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