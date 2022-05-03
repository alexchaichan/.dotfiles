git clone https://github.com/alexchaichan/.password-store.git ~/.password-store 

# spotify
echo | pass spotify-tui > ~/.config/spotify-tui/client.yml && ln -sf ~/.dotfiles/spotify/spotify-tui/config.yml ~/.config/spotify-tui
echo | pass spotifyd > ~/.cache/spotifyd/credentials.json
