#!/usr/bin/env bash

git clone https://github.com/alexchaichan/.password-store.git ~/.password-store 

# spotify
echo | pass spotify-tui > ~/.config/spotify-tui/client.yml

if [[ "$os" == "osx" ]]; then
	echo | pass spotifyd > ~/.cache/spotifyd/credentials.json
elfi [[ "$os" == "linux" ]]; then
	echo | pass spotifyd > ~/.config/spotifyd/credentials.json
fi