```# neovim
#nvim "+:CocInstall coc-json coc-pairs coc-r-lsp coc-snippets coc-tsserver coc-vimlsp"
```
___

# full disk acces to crontabs

1. open preferences and go to "Security & Privacy" -> "Privacy"
2. scroll down to "Full Disk Access" on the left side and select it.
3. hit the unlock icon and enter your password
4. hit the "+" sign to add an application
5. type "command+shift+G" to bring up the got to file dialog box
6. enter the full path name to the application (/usr/sbin/cron) and click on "Go"
7. click "Open" It should show up in the list with a check mark next to it. I tried it with a simple csh script in cron and it worked
___

# remove standard hotkey `cmd+<space>` and

1. go to System Preferences
2. Keyboard > Shortcuts > Spotlight > uncheck
3. `cp -R ~/.dotfiles/osx/open_terminal.workflow ~/Library/Services`
4. Services > check copied services and map a shortcut
___

# screenrecord w/ audio

`audiomidisetup`

- click "+" button > Create Aggregated Device > name it "quicktime player input" > check BlackHole 16ch

- click "+" button > Create Multi-Output Device > name it "screen record w/ auio" > check Built-In Output (must be on top!) + BlackHole 16ch

- record screen with "screen record w/ audio"
___







