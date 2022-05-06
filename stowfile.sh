#!/usr/bin/env bash

# create directories

mkdir ~/.config

mkdir ~/.cache

mkdir ~/zsh

mkdir mail

mkdir ~/.config/nvim && mkdir ~/.config/nvim/pack/ && mkdir ~/.config/nvim/pack/plugins/ && mkdir ~/.config/nvim/pack/plugins/start && mkdir ~/.config/nvim/pack/plugins/opt

mkdir ~/.tmux && mkdir ~/.tmux/plugins

mkdir ~/.config/vdirsyncer

mkdir ~/.config/spotify-tui

mkdir ~/.config/spotifyd

if [[ "$os" == "osx" ]]; then
	mkdir ~/.cache/spotifyd
fi

if [[ "$os" == "linux" ]]; then
	mkdir ~/.config/systemd/
	mkdir ~/.config/systemd/user/
	#cp ~/.dotfiles/arch/dropbox.service ~/.config/systemd/user/

	#systemctl --user start dropbox
	#systemctl --user status dropbox # check status
	#systemctl --user enable dropbox
fi

mkdir ~/.config/zathura

mkdir ~/repositories

mkdir ~/.contacts

mkdir ~/.calendars

# create symlinks

# zshrc
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/zsh/.zshrc_mac ~/.zshrc
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/zsh/.zshrc_arch ~/.zshrc
fi

# bash
if [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/bash/.arch_bashrc ~/.bashrc
	ln -sf ~/.dotfiles/bash/.arch_bashprofile ~/.bash_profile
fi


# git
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/git/.gitconfig_osx ~/.gitconfig && git config --global core.excludesfile ~/.dotfiles/git/.gitignore_global
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/git/.gitconfig_arch ~/.gitconfig && git config --global core.excludesfile ~/.dotfiles/git/.gitignore_global
fi
ln -sf ~/.dotfiles/git/.gitconfig ~/ && git config --global core.excludesfile ~/.dotfiles/git/.gitignore_global



# tmux
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

# mutt (mailcap)
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/mutt/.mac_mailcap ~/.mailcap
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/mutt/.arch_mailcap ~/.mailcap
fi

# psychopy
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/psychopy/.psychopy3 ~/
fi

# alacritty
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/alacritty/osx_alacritty.yml ~/.config/alacritty.yml
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/alacritty/arch_alacritty.yml ~/.config/alacritty.yml
fi

# zathura
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/zathura/osx_zathurarc ~/.config/zathura/zathurarc
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/zathura/arch_zathurarc ~/.config/zathura/zathurarc
fi

# xinitrc
if [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/arch/.xinitrc ~/
fi

# spotifyd
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/spotify/spotifyd/osx_spotifyd.conf ~/.config/spotifyd/spotifyd.conf
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/spotify/spotifyd/arch_spotifyd.conf ~/.config/spotifyd/spotifyd.conf
fi

# pacman.conf
if [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/arch/pacman/pacman.conf /etc
fi

# spotify-tui
ln -sf ~/.dotfiles/spotify/spotify-tui/config.yml ~/.config/spotify-tui

ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/bookmarks/urls ~/

ln -sf ~/.dotfiles/isync/vdirsyncer/config ~/.config/vdirsyncer

ln -sf ~/.dotfiles/ranger ~/.config

ln -sf ~/.dotfiles/khard ~/.config

ln -sf ~/.dotfiles/khal ~/.config

ln -sf ~/.dotfiles/isync/mbsync/.mbsyncrc ~/

ln -sf ~/.dotfiles/mutt/.muttrc ~/

ln -sf ~/.dotfiles/nvim/* ~/.config/nvim

ln -sf ~/.dotfiles/newsboat/.newsboat ~/

ln -sf ~/.dotfiles/w3m/.w3m ~/

ln -sf ~/.dotfiles/jupyter/.jupyter ~/



ln -sf ~/.dotfiles/Templates ~/

ln -sf ~/.dotfiles/styles ~/

ln -sf ~/.dotfiles/htop/ ~/.config

ln -sf ~/.dotfiles/mpv ~/.config

ln -sf ~/.dotfiles/neofetch ~/.config

# source from dropbox
# ln -sf ~/Dropbox/.config/Keychains ~/Library
