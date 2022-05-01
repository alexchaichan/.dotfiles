![Screenshot](./screenshot.png)


```
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# git
brew install git

git clone https://github.com/alexchaichan/.dotfiles.git










source ~/.dotfiles/setup/macos/install.sh

if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi


# zsh with all plugins
mkdir ~/.zsh
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
ln -sf ~/.dotfiles/setup/osx/Brewfile ~/
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


# pip
sudo easy_install pip
sudo easy_install pip3
pip3 install PyQt5



# required for some downloads
echo '[build_ext]
include_dirs=/opt/X11/include
library_dirs=/opt/X11/lib' >> ~/.pydistutils.cfg

# pandoc
git clone https://github.com/pandoc/lua-filters.git ~/.local/share/pandoc/filters

# spotify
mkdir ~/.config/spotify-tui && echo | pass spotify-tui > ~/.config/spotify-tui/client.yml && ln -sf ~/.dotfiles/spotify/spotify-tui/config.yml ~/.config/spotify-tui
mkdir ~/.cache/spotifyd && echo | pass spotifyd > ~/.cache/spotifyd/credentials.json


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
cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser

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





# jupyter
pip install JLDracula

pip install qtconsole # pip3 install qtconsole pip3 install --user qtconsole
pip install jupyter

# rstudio
ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio
ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets




# amphetamine
wget https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg
hdiutil attach Amphetamine\ Enhancer.dmg
cp -R /Volumes/Amphetamine\ Enhancer/Amphetamine\ Enhancer.app /Applications


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
