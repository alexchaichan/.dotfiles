# setup a fresh mac(book)


```
defaults write com.apple.Finder AppleShowAllFiles true
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write com.apple.screencapture disable-shadow -bool TRUE

killall SystemUIServer
killall Dock
killall Finder

defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install cask

brew install --cask dropbox

ln -sf ~/Dropbox/.config/zsh/ ~/.zsh
ln -sf ~/Dropbox/.dotfiles/zsh/.zshrc_mac ~/.zshrc
ln -sf ~/Dropbox/.config/Keychains ~/Library
ln -sf ~/Dropbox/.config/nvim/ ~/.config/
ln -sf ~/Dropbox/.config/.mutt/.muttrc ~/
ln -sf ~/Dropbox/.config/.mutt/.mailcap ~/
ln -sf ~/Dropbox/.config/.qutebrowser ~/
ln -sf ~/Dropbox/.config/.w3m ~/
ln -sf ~/Dropbox/.config/calcurse ~/.config
ln -sf ~/Dropbox/.config/zathura ~/.config
ln -sf ~/Dropbox/.config/rstudio ~/.config
ln -sf ~/Dropbox/.config/mpv ~/.config
ln -sf ~/Dropbox/.config/ranger ~/.config
ln -sf ~/Dropbox/.config/spotify-tui/ ~/.config/
ln -sf ~/Dropbox/.config/neofetch ~/.config
ln -sf ~/Dropbox/.config/osx/alacritty.yml ~/.config
ln -sf ~/Dropbox/.config/osx/.tmux.conf ~/
ln -sf ~/Dropbox/.config/coc ~/.config
ln -sf ~/Dropbox/.config/.git-credentials ~/
ln -sf ~/Dropbox/.config/khard ~/.config
ln -sf ~/Dropbox/.config/vdirsyncer ~/.config
ln -sf ~/Dropbox/.config/khal ~/.config
ln -sf ~/Dropbox/.config/.password-store ~/
ln -sf ~/Dropbox/.config/.gnupg ~/
ln -sf ~/Dropbox/.config/.newsboat ~/
ln -sf ~/Dropbox/.config/.jupyter ~/
ln -sf ~/Dropbox/.config/.mbsyncrc ~/
ln -sf ~/Dropbox/.config/.qutebrowser/bookmarks/urls ~/
ln -sf ~/Dropbox/.config/pandoc/ ~/.local/share 
ln -sf ~/Dropbox/.config/.psychopy3 ~/

# zshell
brew install zsh
zsh
chsh -s /bin/zsh

# x-code
xcode-select --install 
softwareupdate --all --install --force

# bash 
brew install bash

# wget (downloader)
brew install wget

# node + npm
brew install node

# anaconda
brew install --cask miniconda

# install python
#wget https://www.python.org/ftp/python/3.10.2/python-3.10.2-macos11.pkg

brew install python3
brew link --overwrite python@3.9

# pip
sudo easy_install pip
sudo easy_install pip3
pip3 install PyQt5

# nvim
brew install neovim
sudo ln -sf ~/Dropbox/.config/nvim/spell /usr/local/Cellar/neovim/0.6.1/share/nvim/runtime/ 

# git
brew install git

# alacritty terminal 
brew install --cask alacritty

# nerd font `sauce code pro`
brew tap homebrew/cask-fonts && brew install --cask font-sauce-code-pro-nerd-font 
#cp ~/Dropbox/.config/'Sauce Code Pro Nerd Font Complete.ttf' ~/Library/Fonts 

# terminal multiplexer
brew install tmux
brew install reattach-to-user-namespace

# password manager
brew install pass

# spotify daemon
echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Label</key>
        <string>rustlang.spotifyd</string>
        <key>ProgramArguments</key>
        <array>
            <string>/usr/local/bin/spotifyd</string>
            <string>--config-path=/Users/user/.config/spotifyd/spotifyd.conf</string>
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

sudo chmod 600 /Library/LaunchDaemons/rustlang.spotifyd.plist

sudo launchctl load -w /Library/LaunchDaemons/rustlang.spotifyd.plist
sudo launchctl start /Library/LaunchDaemons/rustlang.spotifyd.plist

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

# required for some downloads
echo '[build_ext]
include_dirs=/opt/X11/include
library_dirs=/opt/X11/lib' >> ~/.pydistutils.cfg

# spotify
brew install spotify-tui
brew install spotifyd
cp -R ~/Dropbox/.config/.cache/spotifyd ~/.cache/

# calendar
brew install vdirsyncer
brew install khal
#brew install calcurse

# urlview
brew install urlview
brew install extract_url

# rss reader
brew install newsboat

#terminal browser
brew install w3m

### qutebrowser
## .app evtl. version anpassen "https://github.com/qutebrowser/qutebrowser/releases"


wget https://github.com/qutebrowser/qutebrowser/releases/download/v2.4.0/qutebrowser-2.4.0.dmg

#brew install --cask qutebrowser # funktioniert evtl. nicht

## virtual einvironment

pip install PyQtWebEngine
pip3 install qutebrowser
pip3 install asciidoc 
pip3 install adblock
pip uninstall tldextract

git clone https://github.com/qutebrowser/qutebrowser.git

cd qutebrowser

python3 scripts/mkvenv.py

## password manager
brew install qt dmenu
cp -r ~/Dropbox/.config/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser

# mail client
brew install neomutt
brew install isync
brew install msmtp

# image viewer
brew install feh

# neofetch shows systeminfo
brew install neofetch

# activitymonitor
brew install htop

# contact book
brew install khard

# vpn
brew install openconnect

# ranger file manager
brew install ranger
brew install tree

# markdown reader
brew install glow

# better than cat
brew install bat

#ffmpeg video <-> audio 
brew instal ffmpeg

# zathura pdf viewer
brew tap zegervdv/zathura
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
brew install mpv
brew install youtube-dl
brew install --cask vlc

#music player
brew install moc
brew install berkeley-db
brew install jack
brew install libmad
brew install libid3tag

echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>org.jackaudio.jackd</string>
    <key>WorkingDirectory</key>
    <string>/Users/user/</string>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/local/Cellar/jack/1.9.7/bin/jackd</string>
      <string>-d</string>
      <string>coreaudio</string>
    </array>
    <key>EnableGlobbing</key>
    <true/>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <true/>
  </dict>
</plist>' >> ~/Library/LaunchAgents/org.jackaudio.jackd.plist

launchctl load ~/Library/LaunchAgents/org.jackaudio.jackd.plist

# youtube terminal (funktioniert nicht)
#brew install mps-youtube

# zoom
brew install --cask zoom

#speed test
brew tap teamookla/speedtest
brew install speedtest --force

# feuerfuchs
brew install --cask firefox

# jupyter
brew install jupyterlab
pip install JLDracula

pip install qtconsole # pip3 install qtconsole pip3 install --user qtconsole 
pip install jupyter

# rstudio
brew install --cask rstudio

# pycharm
brew install --cask pycharm-ce

# clipboardmanager
brew install --cask maccy

# mspowerpoint
brew install --cask microsoft-powerpoint

#hush coockieblocker
# brew install --cask hush

# latex
brew install --cask basictex
brew install texlive
# wget https://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg

# chess
brew install gnu-chess
brew install xboard

# amphetamine
mas install 937984704
wget https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg
hdiutil attach Amphetamine\ Enhancer.dmg
cp -R /Volumes/Amphetamine\ Enhancer/Amphetamine\ Enhancer.app /Applications

# easy csv editor
mas install 1171346381

# plaintext
mas install 508368068

mkdir ~/Pictures/screenshot
defaults write com.apple.screencapture location ~/Pictures/screenshots/ && killall SystemUIServer

# neovim dependencies
gem install neovim
yarn global add neovim
pip3 install neovim
brew install grep ripgrep fd
pip3 install pynvim
brew install fzf
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

### unlink media buttons

```
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

#launchctl load -w /System/Library/LaunchAgents/com.apple.rcd.plist  # undo
```

___



## `node.js` & `npm`

___

#### Cronjobs 

1. open preferences and go to "Security & Privacy" -> "Privacy"
2. scroll down to "Full Disk Access" on the left side and select it.
3. hit the unlock icon and enter your password
4. hit the "+" sign to add an application
5. type "command+shift+G" to bring up the got to file dialog box (don‚Äôt seem able to navigate the /usr directory)
6. enter the full path name to the application (/usr/sbin/cron) and click on "Go"
7. click "Open" It should show up in the list with a check mark next to it. I tried it with a simple csh script in cron and it worked
___

## disable sound effects

1. open System Preferences
2. go to Sound
3. uncheck `Play sound on Startup`, `Play user interface sound effects`, `Play feedback when volume is changed`
4. turn down `Alert volume`

## disable keyboard stuff

1. open System Preferences
2. disable `fn - keys``
3. and the rest...

---

# R

## install r packages

` install.packages(c("tidyverse", "languageserver", "DescTools", "komaletter", "lubridate", "data.table", "psych", "summarytools", "gt", "shiny", "markdown", "DT", "devtools", "here", "forecast", "highcharter", "janitor", "timetk", "randomcoloR", "ggThemeAssist", "readxl"))`

`devtools::install_github("IRkernel/IRkernel")`

## install dependencies

`IRkernel::installspec()`
___


---

## remove standard hotkey `cmd+<space>` and 

1. go to System Preferences 
2. Keyboard > Shortcuts > Spotlight
3. `cp -R ~/Dropbox/.config/open_terminal.workflow ~/Library/Services` `cp -R ~/Dropbox/.config/open_browser.workflow ~/Library/Services`
4. Services > check copied services and map a shortcut  

___

## screenrecord w/ audio

`brew install blackhole-16ch`

`audiomidisetup`

- click "+" button > Create Aggregated Device > name it "quicktime player input" > check BlackHole 16ch

- click "+" button > Create Multi-Output Device > name it "screen record w/ auio" > check Built-In Output (must be on top!) + BlackHole 16ch 

- record screen with "screen record w/ audio"
___
