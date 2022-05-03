#!/usr/bin/env bash

git clone https://github.com/alexchaichan/.password-store.git ~/.password-store 

# spotify
echo | pass spotify-tui > ~/.config/spotify-tui/client.yml
echo | pass spotifyd > ~/.cache/spotifyd/credentials.json
