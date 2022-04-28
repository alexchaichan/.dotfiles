# system setup mac

![Screenshot](./screenshot.png)

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

# zshell
brew install zsh
zsh
chsh -s /bin/zsh

# git
brew install git

git clone https://github.com/alexchaichan/.dotfiles.git

brew install cask

brew install --cask dropbox

# zsh with all plugins
mkdir ~/zsh
ln -sf ~/.dottfiles/zsh/.zshrc_mac ~/.zshrc
zsh_add_plugin 'hlissner/zsh-autopair'
zsh_add_plugin 'zsh-users/zsh-completions'
zsh_add_plugin 'romkatv/powerlevel10k'
zsh_add_plugin 'zsh-users/zsh-syntax-highlighting'
zsh_add_plugin 'zsh-users/zsh-autosuggestions'

# vim with all plugis
mkdir ~/.config/nvim && ln -sf ~/.dotfiles/nvim/* ~/.config/nvim && mkdir ~/.config/nvim/pack/ && mkdir ~/.config/nvim/pack/plugins/ && mkdir ~/.config/nvim/pack/plugins/start && mkdir ~/.config/nvim/pack/plugins/opt
vim_add_plugin 'dense-analysis/ale'
vim_add_plugin 'neoclide/coc.nvim'
vim_add_plugin 'chrisbra/csv.vim'
vim_add_plugin 'junegunn/fzf.vim'
vim_add_plugin 'jupyter-vim/jupyter-vim'
vim_add_plugin 'iamcco/markdown-preview.vim'
vim_add_plugin 'gaalcaras/ncm-R'
vim_add_plugin 'ncm2/ncm2'
vim_add_plugin 'ncm2/ncm2-bufword'
vim_add_plugin 'ncm2/ncm2-jedi'
vim_add_plugin 'ncm2/ncm2-path'
vim_add_plugin 'preservim/nerdtree'
vim_add_plugin 'jalvesaq/Nvim-R'
vim_add_plugin 'nvim-treesitter/nvim-treesitter'
vim_add_plugin 'roxma/nvim-yarp'
vim_add_plugin 'nvim-lua/plenary.nvim'
vim_add_plugin 'kevinhwang91/rnvimr'
vim_add_plugin 'nvim-telescope/telescope.nvim'
vim_add_plugin 'dracula/vim'
vim_add_plugin 'vim-airline/vim-airline'
vim_add_plugin 'tpope/vim-commentary'
vim_add_plugin 'sheerun/vim-polyglot'
vim_add_plugin 'honza/vim-snippets'
vim_add_plugin 'dhruvasagar/vim-table-mode'
vim_add_plugin 'glepnir/dashboard-nvim'

# tmux with all plugins
mkdir ~/.tmux && mkdir ~/.tmux/plugins
ln -sf ~/.dotfiles/tmux/.osx_tmux.conf ~/.tmux.conf
tmux_add_plugin 'tmux-plugins/tmux-battery'
tmux_add_plugin 'tmux-plugins/tmux-copycat'
tmux_add_plugin 'tmux-plugins/tmux-cpu'
tmux_add_plugin 'tmux-plugins/tmux-maildir-counter'
tmux_add_plugin 'tmux-plugins/tmux-newsboat'
tmux_add_plugin 'tmux-plugins/tmux-online-status'
tmux_add_plugin 'tmux-plugins/tmux-open'
tmux_add_plugin 'tmux-plugins/tmux-sensible'
tmux_add_plugin 'tmux-plugins/tmux-sidebar'
tmux_add_plugin 'tmux-plugins/tmux-urlview'
tmux_add_plugin 'tmux-plugins/tmux-yank'
tmux_add_plugin 'jaclu/tmux-menus'
tmux_add_plugin 'xamut/tmux-weather'
tmux_add_plugin 'schasse/tmux-jump'

# source from dotfiles
ln -sf ~/.dotfiles/alacritty/osx_alacritty.yml ~/.config/.alacritt.yml 
ln -sf ~/.dotfiles/newsboat ~/
ln -sf ~/.dottfiles/.qutebrowser ~/
ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/bookmarks/urls ~/
ln -sf ~/.dotfiles/mutt/.muttrc ~/
ln -sf ~/.dotfiles/mutt/.mac_mailcap ~/
ln -sf ~/.dotfiles/psychopy/.psychopy3 ~/
ln -sf ~/.dotfiles/w3m/.w3m ~/
ln -sf ~/.dotfiles/moc/.moc ~/
ln -sf ~/.dotfiles/jupyter/.jupyter ~/
ln -sf ~/.dotfiles/zathura ~/.config
ln -sf ~/.dotfiles/ranger/ranger ~/.config
ln -sf ~/.dotfiles/mpv ~/.config
ln -sf ~/.dotfiles/neofetch ~/.config
ln -sf ~/.dotfiles/khard/khard ~/.config
ln -sf ~/.dotfiles/khal/khal ~/.config
ln -sf ~/.dotfiles/git/.gitconfig ~/
ln -sf ~/.dotfiles/git/.gitignore_global ~/ && git config --global core.excludesfile ~/.gitignore_global
ln -sf ~/.dotfiles/spotify/spotifyd ~/.config
ln -sf ~/.dotfiles/mbsync/.mbsyncrc ~/
ln -sf ~/.dotfiles/Templates ~/
ln -sf ~/.dotfiles/styles ~/
mkdir ~/.config/vdirsyncer && ln -sf ~/.dotfiles/vdirsyncer/config ~/.config/vdirsyncer

# source from dropbox
ln -sf ~/Dropbox/.config/Keychains ~/Library
ln -sf ~/Dropbox/.config/.gnupg ~/

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

# pip
sudo easy_install pip
sudo easy_install pip3
pip3 install PyQt5

# nvim
brew install neovim

# alacritty terminal 
brew install --cask alacritty

# nerd font `sauce code pro`
brew tap homebrew/cask-fonts && brew install --cask font-sauce-code-pro-nerd-font 

# terminal multiplexer
brew install tmux
brew install reattach-to-user-namespace

# password manager
brew install pass

# yarn
brew install yarn

# go
brew install go

# ruby
brew install ruby

# R
brew install --cask r

# xquartz
brew install --cask xquartz

# required for some downloads
echo '[build_ext]
include_dirs=/opt/X11/include
library_dirs=/opt/X11/lib' >> ~/.pydistutils.cfg

# pandoc
brew install pandoc
git clone https://github.com/pandoc/lua-filters.git ~/.local/share/pandoc/filters

# spotify
brew install spotify-tui
brew install spotifyd
brew services start spotifyd
mkdir ~/.config/spotify-tui && echo | pass spotify-tui > ~/.config/spotify-tui/client.yml && ln -sf ~/.dotfiles/spotify/spotify-tui/config.yml ~/.config/spotify-tui
mkdir ~/.cache/spotifyd && echo | pass spotifyd > ~/.cache/spotifyd/credentials.json

# calendar
brew install vdirsyncer
brew install khal
#brew install calcurse

# urlview
brew install urlview
brew install extract_url

# rss reader
brew install newsboat

# terminal browser
brew install w3m

### qutebrowser
#brew install --cask qutebrowser # wont work?

## .app evtl. version anpassen "https://github.com/qutebrowser/qutebrowser/releases"
wget https://github.com/qutebrowser/qutebrowser/releases/download/v2.4.0/qutebrowser-2.4.0.dmg

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
cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser

# mail client
brew install neomutt
brew install isync
brew install msmtp
mkdir ~/mail

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

# tree file structure
brew install tree

# markdown .md viewer
brew install glow

# better than cat
brew install bat

#ffmpeg audio-converter 
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

# music player
brew install moc
brew install berkeley-db
brew install jack
brew install libmad
brew install libid3tag
brew services start jack

# youtube terminal (funktioniert nicht)
#brew install mps-youtube

# zoom
brew install --cask zoom

# speed test
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
ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio
ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets

# pycharm
brew install --cask pycharm-ce

# clipboardmanager
brew install --cask maccy

# mspowerpoint
brew install --cask microsoft-powerpoint

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

mkdir ~/screenshots
defaults write com.apple.screencapture location ~/screenshots/ && killall SystemUIServer

# neovim dependencies
gem install neovim
yarn global add neovim
pip3 install neovim
brew install grep ripgrep fd fzf
pip3 install pynvim
cd ~/.config/nvim/pack/plugins/start/coc.nvim && yarn install
sudo ln -sf ~/.dotfiles/nvim/spell /usr/local/Cellar/neovim/0.6.1/share/nvim/runtime/
nvim "+:CocInstall coc-json coc-pairs coc-r-lsp coc-snippets coc-tsserver coc-vimlsp" 
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


#### Cronjobs 

1. open preferences and go to "Security & Privacy" -> "Privacy"
2. scroll down to "Full Disk Access" on the left side and select it.
3. hit the unlock icon and enter your password
4. hit the "+" sign to add an application
5. type "command+shift+G" to bring up the got to file dialog box
6. enter the full path name to the application (/usr/sbin/cron) and click on "Go"
7. click "Open" It should show up in the list with a check mark next to it. I tried it with a simple csh script in cron and it worked

```
crontab -e

# sync every 5 mins  mail, contacts and calendars
*/5 * * * * /usr/local/bin/mbsync icloud && /usr/local/bin/vdirsyncer discover my_contacts && /usr/local/bin/vdirsyncer discover my_calendar  && /usr/local/bin/vdirsyncer sync >/dev/null 2>&1

```
___

## disable sound effects

1. open System Preferences
2. go to Sound
3. uncheck `Play sound on Startup`, `Play user interface sound effects`, `Play feedback when volume is changed`
4. turn down `Alert volume`

## disable keyboard stuff

system preference > keyboard ...

---

# R

## install r packages

` install.packages(c("tidyverse", "languageserver", "DescTools", "komaletter", "lubridate", "data.table", "psych", "summarytools", "gt", "shiny", "markdown", "DT", "devtools", "here", "forecast", "highcharter", "janitor", "timetk", "randomcoloR", "ggThemeAssist", "readxl", "languageserver"))`

`devtools::install_github("IRkernel/IRkernel")`

## install dependencies

`IRkernel::installspec()`
___


---

## remove standard hotkey `cmd+<space>` and 

1. go to System Preferences 
2. Keyboard > Shortcuts > Spotlight > uncheck
3. `cp -R ~/.dotfiles/osx/open_terminal.workflow ~/Library/Services` 
4. Services > check copied services and map a shortcut  

___

## screenrecord w/ audio

`brew install blackhole-16ch`

`audiomidisetup`

- click "+" button > Create Aggregated Device > name it "quicktime player input" > check BlackHole 16ch

- click "+" button > Create Multi-Output Device > name it "screen record w/ auio" > check Built-In Output (must be on top!) + BlackHole 16ch 

- record screen with "screen record w/ audio"
___
