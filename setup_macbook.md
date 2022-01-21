# setup a fresh mac(book)

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install zsh

zsh

brew install neovim

brew install cask

brew install git

brew install --cask iterm2

brew install --cask dropbox

echo source ~/Dropbox/.config/zsh/.zshrc >> ~/.zshrc

mkdir ~/.config/nvim

echo source ~/Dropbox/.config/nvim/init.vim >> ~/.config/nvim/init.vim

echo '{
  "coc.preferences.formatOnSaveFiletypes": ["css", "markdown", "javascript", "graphql", "html", "yaml",  "json", "python"],

  // python config
  //"python.linting.enabled": true,
  //"python.linting.pylintEnabled": true,

  "snippets.ultisnips.directories":
  [
    "UltiSnips",
    "~/Dropbox/.config/nvim/snips"
  ]

}' >> ~/.config/nvim/coc-settings.json

mkdir ~/.config/nvim/autoload
echo source ~/Dropbox/.config/nvim/autoload/plug.vim >> ~/.config/nvim/autoload/plug.vim

mkdir ~/.config/spotifyd
echo '[global]
username = "USERNAME"
password = "PASSWD"
backend = "portaudio"
mixer = "PCM"
volume_controller = "softvol"
device_name = "spotify"
bitrate = 160
cache_path = "~/.config/spotifyd/cache"
volume_normalisation = true
zeroconf_port = 1234
' >> ~/.config/spotifyd/spotifyd.conf

mkdir ~/.config/spotify-tui
echo '---
client_id: b6a924a75edc4213adee7365aea7b318
client_secret: 3805771996264c708f4257fc133f5f0a
device_id: 75a25c2be83fdfa0bb221b04cf3a4525e9f1203a
port: 8888' >> ~/.config/spotify-tui/client.yml


ln -s ~/Dropbox/.config/.mutt ~/
ln -s ~/Dropbox/.config/.qutebrowser ~/
ln -s ~/Dropbox/.config/.w3m ~/
ln -s ~/Dropbox/.config/calcurse ~/.config
ln -s ~/Dropbox/.config/zathura ~/.config
ln -s ~/Dropbox/.config/rstudio ~/.config
ln -s ~/Dropbox/.config/mpv ~/.config

brew install python3

brew install --cask r

brew install spotify-tui

brew install spotifyd

brew install calcurse

brew install w3m

brew install --cask qutebrowser

brew install mutt

brew install mutt

brew install zathura

brew install zathura-pdf-poppler

mkdir -p $(brew --prefix zathura)/lib/zathura

ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib

brew unlink girara

brew unlink zathura

brew install girara --HEAD

brew install zathura --HEAD

mkdir -p $(brew --prefix zathura)/lib/zathura

ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib

brew install --cask mpv

brew install --cask zoom

brew install --cask firefox

brew install jupyterlab

brew install --cask rstudio

brew install --cask notunes

brew install --cask microsoft-powerpoint

brew install --cask hush

brew install --cask the-unarchiver

wget https://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg
```

## `node.js` & `npm`

## appstore

- csv editor
- AdBlockPro
- Amphetamine
- GetPlainText
- Chess Tactics and Strategy
