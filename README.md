# dotfiles

## package installer

```
if [[ "$(uname)" == "Darwin" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    echo '[archlinuxfr]
    SigLevel = Never
    Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf 
    pacman -Sy yaourt
elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]]; then

elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]]; then

fi
```

## git

```
if [[ "$(uname)" == "Darwin" ]]; then
    brew install git
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    sudo pacman -S git
elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]]; then
    winget install git
elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]]; then
    winget install git
fi
```

# clone .dotfiles
`git clone https://github.com/alexchaichan/.dotfiles.git`

## store `.gnupg` file into `~/`

## run installation file

`source ~/.dotfiles/bootstrap.sh`

### [last steps per hand for osx](osx/lastperhand.md)

## [arch linux](arch/README.md/)
