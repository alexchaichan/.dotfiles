# dotfiles

## for windows (cygwin):
- install [cygwin](https://cygwin.com/setup-x86_64.exe)
- pick `wget`

## package installer

```
if [[ "$(uname)" == "Darwin" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    echo '[archlinuxfr]
    SigLevel = Never
    Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf
    pacman -Sy yaourt
elif [[ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]]; then
    wget rawgit.com/transcode-open/apt-cyg/master/apt-cyg
    install apt-cyg /bin
fi
```

## git

```
if [[ "$(uname)" == "Darwin" ]]; then
    brew install git
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    sudo pacman -S git
elif [[ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]]; then
    apt-cyg install git
fi
```

# clone `.dotfiles` & `.password-store`
`git clone https://github.com/alexchaichan/.dotfiles.git ~/.dotfiles`

`git clone https://github.com/alexchaichan/.password-store.git ~/.password-store`

## store `.gnupg` repo into `~/`

## run installation file

`source ~/.dotfiles/bootstrap.sh`

## credentials as clear-text

```
## spotify credentials
echo | pass spotify.com/spotify-tui > $CONFIG/spotify-tui/client.yml

if [[ "$os" == "osx" ]]; then
	echo | pass spotify.com/spotifyd > $HOME/.cache/spotifyd/credentials.json
elif [[ "$os" == "linux" ]]; then
	echo | pass spotify.com/spotifyd > $CONFIG/spotifyd/cache/credentials.json
fi

echo | pass show credentials/calcurse >> $HOME/.calcurse/caldav/config
echo | pass show credentials/vdirsyncer >> $CONFIG/vdirsyncer/config
echo | pass show credentials/mbsyncrc >> $HOME/.mbsyncrc
```

## calcurse config

```
calcurse-caldav --init=two-way

ln -sf ~/Dropbox/iphone/todo ~/.calcurse
```

### run light version

`source ~/.dotfiles/light.sh`

### cygwin

`source ~/.dotfiles/windows/cygwin.sh`
