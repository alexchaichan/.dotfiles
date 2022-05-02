# source from dotfiles
mkdir ~/.zsh
mkdir ~/.config/nvim && mkdir ~/.config/nvim/pack/ && mkdir ~/.config/nvim/pack/plugins/ && mkdir ~/.config/nvim/pack/plugins/start && mkdir ~/.config/nvim/pack/plugins/opt
mkdir ~/.tmux && mkdir ~/.tmux/plugins
mkdir ~/.config/vdirsyncer

ln -sf ~/.dottfiles/zsh/.zshrc_mac ~/.zshrc
ln -sf ~/.dotfiles/nvim/* ~/.config/nvim
ln -sf ~/.dotfiles/tmux/.osx_tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/alacritty/osx_alacritty.yml ~/.config/.alacritty.yml
ln -sf ~/.dotfiles/setup/osx/Brewfile ~/
ln -sf ~/.dotfiles/newsboat/.newsboat ~/
ln -sf ~/.dotfiles/qutebrowser/.qutebrowser ~/
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
ln -sf ~/.dotfiles/vdirsyncer/config ~/.config/vdirsyncer
ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio
ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets

# source from dropbox
# ln -sf ~/Dropbox/.config/Keychains ~/Library
# ln -sf ~/Dropbox/.config/.gnupg ~/
