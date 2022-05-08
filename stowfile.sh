#!/usr/bin/env bash

########################################################
# create directories                                   #
########################################################

mkdir ~/.config && mkdir ~/.cache && mkdir ~/repositories

########################################################
# create symlinks                                      #
########################################################

# zsh
mkdir ~/zsh

if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/zsh/.zshrc_mac ~/.zshrc
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/zsh/.zshrc_linux ~/.zshrc
fi

# bash
if [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/bash/.arch_bashrc ~/.bashrc
	ln -sf ~/.dotfiles/bash/.arch_bash_profile ~/.bash_profile
fi

# git
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/git/.gitconfig_osx ~/.gitconfig && git config --global core.excludesfile ~/.dotfiles/git/.gitignore_global
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/git/.gitconfig_arch ~/.gitconfig && git config --global core.excludesfile ~/.dotfiles/git/.gitignore_global
fi

## git pass helper
ln -sf ~/.dotfiles/git/pass-git-helper ~/.config

# alacritty
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/alacritty/osx_alacritty.yml ~/.config/alacritty.yml
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/alacritty/arch_alacritty.yml ~/.config/alacritty.yml
fi

# nvim
mkdir ~/.config/nvim && mkdir ~/.config/nvim/pack/ && mkdir ~/.config/nvim/pack/plugins/ && mkdir ~/.config/nvim/pack/plugins/start && mkdir ~/.config/nvim/pack/plugins/opt && mkdir ~/.config/nvim/spell && ln -sf ~/.dotfiles/nvim/* ~/.config/nvim

# tmux
mkdir ~/.tmux && mkdir ~/.tmux/plugins

if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/tmux/.osx_tmux.conf ~/.tmux.conf
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/tmux/.arch_tmux.conf ~/.tmux.conf
fi

# brewfile / pacmanfile
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/osx/Brewfile ~/
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/arch/pacman/pacmanfile ~/
fi

# qutebrowser
if [[ "$os" == "osx" ]]; then
	mkdir ~/.qutebrowser
	ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/* ~/.qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git ~/.qutebrowser/dracula
elif [[ "$os" == "linux" ]]; then
	mkdir ~/.config/qutebrowser
	ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/* ~/.config/qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git ~/.config/qutebrowser/dracula
fi

# qutebrowser bookmarks
ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/bookmarks/urls ~/

# mail
mkdir ~/mail

## muttrc
ln -sf ~/.dotfiles/mutt/.muttrc ~/

## mailcap
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/mutt/.mac_mailcap ~/.mailcap
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/mutt/.arch_mailcap ~/.mailcap
fi

# rstudio
mkdir ~/.config/rstudio && ln -sf ~/.dotfiles/rstudio/* ~/.config/rstudio && ln -sf ~/.dotfiles/snippets ~/.config/rstudio/

# psychopy
mkdir ~/.psychopy3 && ln -sf ~/.dotfiles/psychopy/.psychopy3/* ~/.psychopy3

# zathura
mkdir ~/.config/zathura

if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/zathura/osx_zathurarc ~/.config/zathura/zathurarc
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/zathura/arch_zathurarc ~/.config/zathura/zathurarc
fi

# xinitrc
if [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/arch/.xinitrc ~/
fi

# pacman.conf
if [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/arch/pacman/pacman.conf /etc
fi

# spotify
mkdir ~/.config/spotify-tui && mkdir ~/.config/spotifyd && mkdir ~/.cache/spotifyd

## spotifyd
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/spotify/spotifyd/osx_spotifyd.conf ~/.config/spotifyd/spotifyd.conf
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/spotify/spotifyd/arch_spotifyd.conf ~/.config/spotifyd/spotifyd.conf
fi

## spotify-tui
ln -sf ~/.dotfiles/spotify/spotify-tui/config.yml ~/.config/spotify-tui

# i3
if [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/i3/i3 ~/.config
	ln -sf ~/.dotfiles/i3/i3status ~/.config
fi

## spotify credentials
echo | pass spotify-tui > ~/.config/spotify-tui/client.yml

if [[ "$os" == "osx" ]]; then
	echo | pass spotifyd > ~/.cache/spotifyd/credentials.json
elif [[ "$os" == "linux" ]]; then
	echo | pass spotifyd > ~/.config/spotifyd/cache/credentials.json
fi

# ranger
ln -sf ~/.dotfiles/ranger ~/.config

# contacs & calendar
mkdir ~/.contacts && mkdir ~/.calendars

# khard
ln -sf ~/.dotfiles/khard ~/.config

# khal
ln -sf ~/.dotfiles/khal ~/.config

# vdirsyncer
mkdir ~/.config/vdirsyncer && ln -sf ~/.dotfiles/isync/vdirsyncer/config ~/.config/vdirsyncer

# mbsync
ln -sf ~/.dotfiles/isync/mbsync/.mbsyncrc ~/

# newsboat
mkdir ~/.newsboat && ln -sf ~/.dotfiles/newsboat/.newsboat/* ~/.newsboat

# w3m
ln -sf ~/.dotfiles/w3m/.w3m ~/

# jupyter
mkdir ~/.jupyter && ln -sf ~/.dotfiles/jupyter/.jupyter/* ~/.jupyter

# templates
ln -sf ~/.dotfiles/Templates ~/

# htop
ln -sf ~/.dotfiles/htop/ ~/.config

# mpv
ln -sf ~/.dotfiles/mpv ~/.config

# neofetch
ln -sf ~/.dotfiles/neofetch ~/.config

########################################################
# services                                             #
########################################################

# arch dropbox service
if [[ "$os" == "linux" ]]; then
	mkdir ~/.config/systemd/
	mkdir ~/.config/systemd/user/
	#cp ~/.dotfiles/arch/dropbox.service ~/.config/systemd/user/

	#systemctl --user start dropbox
	#systemctl --user status dropbox # check status
	#systemctl --user enable dropbox
fi
