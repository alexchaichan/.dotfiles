___

## last steps by hand

## Rstudio

1. `rstudio`
2. Tools > Global Options... > Code > Edit Snippets... > 1st line <space> > save
3. `ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio && ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets`
___

## neovim
gem install neovim
yarn global add neovim
pip3 install neovim
pip3 install pynvim
cd ~/.config/nvim/pack/plugins/start/coc.nvim && yarn install
sudo ln -sf ~/.dotfiles/nvim/spell /usr/local/Cellar/neovim/0.6.1/share/nvim/runtime/

`nvim "+:CocInstall coc-json coc-pairs coc-r-lsp coc-snippets coc-tsserver coc-vimlsp"`
___

### full disk acces to crontabs

1. open preferences and go to "Security & Privacy" -> "Privacy"
2. scroll down to "Full Disk Access" on the left side and select it.
3. hit the unlock icon and enter your password
4. hit the "+" sign to add an application
5. press "command+shift+G" to bring up the got to file dialog box
6. enter the full path name to the application (/usr/sbin/cron) and click on "Go"
7. click "Open" It should show up in the list with a check mark next to it.
___

### remove standard hotkey `cmd+<space>`

1. go to System Preferences
2. Keyboard > Shortcuts > Spotlight > uncheck
3. Services > map workflow to cmd + space
___

### screenrecord w/ audio

`audiomidisetup`

- click "+" button > Create Aggregated Device > name it "quicktime player input" > check BlackHole 16ch

- click "+" button > Create Multi-Output Device > name it "screen record w/ auio" > check Built-In Output (must be on top!) + BlackHole 16ch

- record screen with "screen record w/ audio"
___