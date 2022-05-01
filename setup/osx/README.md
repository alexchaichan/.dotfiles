![Screenshot](./screenshot.png)


```
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# git
brew install git

git clone https://github.com/alexchaichan/.dotfiles.git

source ~/.dotfiles/setup/macos/install.sh











# pip
sudo easy_install pip
sudo easy_install pip3
pip3 install PyQt5










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


# jupyter
pip install JLDracula
pip install qtconsole # pip3 install qtconsole pip3 install --user qtconsole
pip install jupyter

# rstudio
ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio
ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets



# neovim dependencies
gem install neovim
yarn global add neovim
pip3 install neovim
pip3 install pynvim
cd ~/.config/nvim/pack/plugins/start/coc.nvim && yarn install
sudo ln -sf ~/.dotfiles/nvim/spell /usr/local/Cellar/neovim/0.6.1/share/nvim/runtime/
#nvim "+:CocInstall coc-json coc-pairs coc-r-lsp coc-snippets coc-tsserver coc-vimlsp"


# amphetamine
wget https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg
hdiutil attach Amphetamine\ Enhancer.dmg
cp -R /Volumes/Amphetamine\ Enhancer/Amphetamine\ Enhancer.app /Applications

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





## remove standard hotkey `cmd+<space>` and

1. go to System Preferences
2. Keyboard > Shortcuts > Spotlight > uncheck
3. `cp -R ~/.dotfiles/osx/open_terminal.workflow ~/Library/Services`
4. Services > check copied services and map a shortcut

___

## screenrecord w/ audio

`audiomidisetup`

- click "+" button > Create Aggregated Device > name it "quicktime player input" > check BlackHole 16ch

- click "+" button > Create Multi-Output Device > name it "screen record w/ auio" > check Built-In Output (must be on top!) + BlackHole 16ch

- record screen with "screen record w/ audio"
___
