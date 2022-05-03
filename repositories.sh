#!/usr/bin/env bash

# qutebrowser virtual environment
if [[ "$os" == "osx" ]]; then
	git clone https://github.com/qutebrowser/qutebrowser.git
	cd qutebrowser
	python3 scripts/mkvenv.py
	# password manager script for pass x qutebrowser
	cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser

fi

# pandoc
git clone https://github.com/pandoc/lua-filters.git ~/.local/share/pandoc/filters

# repos

# markdown training
git clone https://github.com/alexchaichan/markdown_training.git ~/repositories

# R
git clone https://github.com/alexchaichan/R.git ~/repositories

# template thesis
git clone https://github.com/alexchaichan/forschungsberichte_und_empirische_abschlussarbeiten.git ~/repositories
