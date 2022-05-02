# source from dotfiles
ln -sf ~/.dotfiles/alacritty/osx_alacritty.yml ~/.config/.alacritty.yml
ln -sf ~/.dotfiles/setup/osx/Brewfile ~/
ln -sf ~/.dotfiles/newsboat/.newsboat ~/
ln -sf ~/.dottfiles/.qutebrowser ~/
ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/bookmarks/urls ~/
ln -sf ~/.dotfiles/mutt/.muttrc ~/
ln -sf ~/.dotfiles/mutt/.mac_mailcap ~/.mailcap
ln -sf ~/.dotfiles/psychopy/.psychopy3 ~/
ln -sf ~/.dotfiles/w3m/.w3m ~/
ln -sf ~/.dotfiles/moc/.moc ~/
ln -sf ~/.dotfiles/jupyter/.jupyter ~/
ln -sf ~/.dotfiles/zathura ~/.config
ln -sf ~/.dotfiles/ranger/ranger ~/.config
ln -sf ~/.dotfiles/mpv ~/.config
ln -sf ~/.dotfiles/neofetch ~/.config
ln -sf ~/.dotfiles/khard/khard ~/.config
ln -sf ~/.dotfiles/khal/khal ~/.config
ln -sf ~/.dotfiles/git/.gitconfig ~/
ln -sf ~/.dotfiles/git/.gitignore_global ~/ && git config --global core.excludesfile ~/.gitignore_global
ln -sf ~/.dotfiles/spotify/spotifyd ~/.config
ln -sf ~/.dotfiles/mbsync/.mbsyncrc ~/
ln -sf ~/.dotfiles/Templates ~/
ln -sf ~/.dotfiles/styles ~/
mkdir ~/.config/vdirsyncer && ln -sf ~/.dotfiles/vdirsyncer/config ~/.config/vdirsyncer

# source from dropbox
ln -sf ~/Dropbox/.config/Keychains ~/Library
ln -sf ~/Dropbox/.config/.gnupg ~/

# spotify
mkdir ~/.config/spotify-tui && echo | pass spotify-tui > ~/.config/spotify-tui/client.yml && ln -sf ~/.dotfiles/spotify/spotify-tui/config.yml ~/.config/spotify-tui
mkdir ~/.cache/spotifyd && echo | pass spotifyd > ~/.cache/spotifyd/credentials.json

# required for some downloads
echo '[build_ext]
include_dirs=/opt/X11/include
library_dirs=/opt/X11/lib' >> ~/.pydistutils.cfg

# rstudio
ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio
ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets
