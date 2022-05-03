#!/usr/bin/env bash

# create directories

mkdir ~/.zsh
mkdir ~/.config/nvim && mkdir ~/.config/nvim/pack/ && mkdir ~/.config/nvim/pack/plugins/ && mkdir ~/.config/nvim/pack/plugins/start && mkdir ~/.config/nvim/pack/plugins/opt
mkdir ~/.tmux && mkdir ~/.tmux/plugins
mkdir ~/.config/vdirsyncer
mkdir ~/.config/spotify-tui
mkdir ~/.config/spotifyd
mkdir ~/.cache/spotifyd
mkdir ~/.config/zathura
mkdir ~/repositories

# create symlinks

# zshrc
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dottfiles/zsh/.zshrc_mac ~/.zshrc
elfi [[ "$os" == "linux" ]]; then
	ln -sf ~/.dottfiles/zsh/.zshrc_arch ~/.zshrc
fi

# tmux
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/tmux/.osx_tmux.conf ~/.tmux.conf
elfi [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/tmux/.arch_tmux.conf ~/.tmux.conf
fi

# brewfile
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/setup/osx/Brewfile ~/
fi

# qutebrowser
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/qutebrowser/.qutebrowser ~/
elfi [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/qutebrowser/.qutebrowser ~/qutebrowser
fi

# qutebrowser
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/mutt/.mac_mailcap ~/.mailcap
elfi [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/mutt/.arch_mailcap ~/.mailcap
fi
ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/bookmarks/urls ~/

# psychopy
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/psychopy/.psychopy3 ~/
fi

# alacritty
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/alacritty/osx_alacritty.yml ~/.config/.alacritty.yml
elfi [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/alacritty/arch_alacritty.yml ~/.config/.alacritty.yml
fi

# zathura
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/zathura/osx_zathurarc ~/.config/zathura/zathurarc
elfi [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/zathura/arch_zathurarc ~/.config/zathura/zathurarc
fi

ln -sf ~/.dotfiles/nvim/* ~/.config/nvim
ln -sf ~/.dotfiles/newsboat/.newsboat ~/
ln -sf ~/.dotfiles/mutt/.muttrc ~/
ln -sf ~/.dotfiles/w3m/.w3m ~/
ln -sf ~/.dotfiles/moc/.moc ~/
ln -sf ~/.dotfiles/jupyter/.jupyter ~/
ln -sf ~/.dotfiles/git/.gitconfig ~/
ln -sf ~/.dotfiles/git/.gitignore_global ~/ && git config --global core.excludesfile ~/.gitignore_global
ln -sf ~/.dotfiles/mbsync/.mbsyncrc ~/
ln -sf ~/.dotfiles/vdirsyncer/config ~/.config/vdirsyncer
ln -sf ~/.dotfiles/Templates ~/
ln -sf ~/.dotfiles/styles ~/
ln -sf ~/.dotfiles/htop/ ~/config
ln -sf ~/.dotfiles/ranger ~/.config
ln -sf ~/.dotfiles/mpv ~/.config
ln -sf ~/.dotfiles/neofetch ~/.config
ln -sf ~/.dotfiles/khard ~/.config
ln -sf ~/.dotfiles/khal ~/.config

# source from dropbox
# ln -sf ~/Dropbox/.config/Keychains ~/Library