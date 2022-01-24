# setup a fresh mac(book)

## 1.st of all

```
defaults write com.apple.Finder AppleShowAllFiles true

killall Finder

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask dropbox

ln -s ~/Dropbox/.config/.mutt ~/
ln -s ~/Dropbox/.config/.qutebrowser ~/
ln -s ~/Dropbox/.config/.w3m ~/
ln -s ~/Dropbox/.config/calcurse ~/.config
ln -s ~/Dropbox/.config/zathura ~/.config
ln -s ~/Dropbox/.config/rstudio ~/.config
ln -s ~/Dropbox/.config/mpv ~/.config
ln -s ~/Dropbox/.config/.jupyter/jupyter_qtconsole_config.py ~/.jupyter
ln -s ~/Dropbox/.config/ranger ~/.config
ln -s ~/Dropbox/.config/spotify-tui/config.yml ~/.config/spotify-tui
ln -s ~/Dropbox/.config/spotify-tui/client.yml ~/.config/spotify-tui
ln -s ~/Dropbox/.config/neofetch ~/.config
ln -s /Users/user/Dropbox/.config/.wegorc /Users/user

brew install zsh

zsh

brew install neovim

brew install cask

brew install git

brew install --cask iterm2

echo 'source ~/Dropbox/.config/zsh/.zshrc' >> ~/.zshrc

mkdir ~/.config/nvim

echo 'source ~/Dropbox/.config/nvim/init.vim' >> ~/.config/nvim/init.vim

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
echo 'source ~/Dropbox/.config/nvim/autoload/plug.vim' >> ~/.config/nvim/autoload/plug.vim

mkdir ~/.config/spotifyd
echo '[global]
username = "USERNAME"
password = "PASSWD"
backend = "portaudio"
mixer = "PCM"
volume_controller = "softvol"
device_name = "spotify"
bitrate = 160
cache_path = "~/.cahe/spotifyd"
volume_normalisation = true
zeroconf_port = 1234
' >> ~/.config/spotifyd/spotifyd.conf

mkdir ~/.config/spotify-tui
echo '---
client_id: b6a924a75edc4213adee7365aea7b318
client_secret: 3805771996264c708f4257fc133f5f0a
device_id: 75a25c2be83fdfa0bb221b04cf3a4525e9f1203a
port: 8888' >> ~/.config/spotify-tui/client.yml

mkdir .config/spotify-tui
mkdir .config/spotifyd

cp ~/Dropbox/.config/spotifyd/spotifyd.conf ~/.config/spotifyd

cp ~/Dropbox/.config/.cache/spotifyd ~/.cache/

echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Label</key>
        <string>rustlang.spotifyd</string>
        <key>ProgramArguments</key>
        <array>
            <string>/usr/local/bin/spotifyd</string>
            <string>--config-path=/users/user/.config/spotifyd/spotifyd.conf</string>
            <string>--no-daemon</string>
        </array>
        <key>UserName</key>
        <string>user</string>
        <key>KeepAlive</key>
        <true/>
        <key>ThrottleInterval</key>
        <integer>30</integer>
    </dict>
</plist>' >>  /Library/LaunchDaemons/rustlang.spotifyd.plist

sudo launchctl load -w /Library/LaunchDaemons/rustlang.spotifyd.plist
sudo launchctl start /Library/LaunchDaemons/rustlang.spotifyd.plist

#python
brew install python3

# yarn
brew install yarn

# go
brew install go

# ruby
brew install ruby

# R
brew install --cask r

# xquartz for r studio
brew install --cask xquartz

# spotify
brew install spotify-tui

brew install spotifyd

brew install calcurse

brew install htop

brew install newsboat

#terminal browser
brew install w3m

###qutebrowser
## .app
#wget https://github.com/qutebrowser/qutebrowser/releases/download/v2.4.0/qutebrowser-2.4.0.dmg
#brew install --cask qutebrowser # funktioniert evtl. nicht

## virtual einvironment
brew install qt

pip3 install qutebrowser

git clone https://github.com/qutebrowser/qutebrowser.git

cd qutebrowser

python3 scripts/mkvenv.py

#mail client
brew install mutt

#image viewer
brew install feh

#neofetch shows systeminfo
brew install neofetch

# activitymonitor
brew install htop

# ranger file manager
brew install ranger
brew install tree

# zathura pdf viewer
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

# video setup
brew install --cask mpv

brew install youtube-dl

# zoom
brew install mps-youtube

brew install --cask zoom

# feuerfuchs
brew install --cask firefox

# jupter
brew install jupyterlab

pip install qtconsole # pip3 install qtconsole pip3 install --user qtconsole  

pip install JLDracula

# rstudio
brew install --cask rstudio

# prevent open music app
brew install --cask notunes

# mospowerpoint
brew install --cask microsoft-powerpoint

#hush. coockieblocker
brew install --cask hush

# anarchiver
#brew install --cask the-unarchiver #may not needed

# latex
wget https://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg

# font `source code pro`
curl -LO https://github.com/adobe-fonts/source-code-pro/archive/release.zip

unzip release.zip
 cp -a source-code-pro-release/TTF/* ~/Library/Fonts
```
___

## turn off all animations

1. opening and closing windows and popovers
2. smooth scrolling
3. showing and hiding sheets, resizing preference windows, zooming windows float 0 doesn't work
4. opening and closing Quick Look windows
5. rubberband scrolling (doesn't affect web views)
6. resizing windows before and after showing the version browser also disabled by NSWindowResizeTime -float 0.001
7. showing a toolbar or menu bar in full screen
8. scrolling column views
9. showing the Dock
10. showing and hiding Mission Control, command+numbers
11. showing and hiding Launchpad
12. changing pages in Launchpad
13. at least AnimateInfoPanes
14. sending messages and opening windows for replies
15. dialog windows

```
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

defaults write -g NSScrollAnimationEnabled -bool false

defaults write -g NSWindowResizeTime -float 0.001

defaults write -g QLPanelAnimationDuration -float 0

defaults write -g NSScrollViewRubberbanding -bool false

defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false

defaults write -g NSToolbarFullScreenAnimationDuration -float 0

defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0

defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0

defaults write com.apple.dock expose-animation-duration -float 0

defaults write com.apple.dock springboard-show-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0

defaults write com.apple.dock springboard-page-duration -float 0

defaults write com.apple.finder DisableAllAnimations -bool true

defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true

defaults write NSGlobalDomain NSWindowResizeTime .001
```

### undo

```
defaults delete -g NSAutomaticWindowAnimationsEnabled
defaults delete -g NSScrollAnimationEnabled
defaults delete -g NSWindowResizeTime
defaults delete -g QLPanelAnimationDuration
defaults delete -g NSScrollViewRubberbanding
defaults delete -g NSDocumentRevisionsWindowTransformAnimation
defaults delete -g NSToolbarFullScreenAnimationDuration
defaults delete -g NSBrowserColumnAnimationSpeedMultiplier
defaults delete com.apple.dock autohide-time-modifier
defaults delete com.apple.dock autohide-delay
defaults delete com.apple.dock expose-animation-duration
defaults delete com.apple.dock springboard-show-duration
defaults delete com.apple.dock springboard-hide-duration
defaults delete com.apple.dock springboard-page-duration
defaults delete com.apple.finder DisableAllAnimations
defaults delete com.apple.Mail DisableSendAnimations
defaults delete com.apple.Mail DisableReplyAnimations
```
___

## neovim plugins

### coc

`:CocInstall coc-json coc-pairs coc-r-lsp coc-snippets coc-tsserver coc-vimlsp`

___


## `node.js` & `npm`

___

## install r packages

` install.packages(c("tidyverse", "languageserver", "DescTools", "komaletter", "lubridate", "data.table", "psych", "summarytools"))`
___

## appstore

- csv editor
- AdBlockPro
- Amphetamine
- GetPlainText
- Chess Tactics and Strategy
