# dotfiles

## install homebrew for osx
```
if [[ "$os" == "osx" ]]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
```
## git
```
if [[ "$os" == "osx" ]]; then
	brew install git
elfi [[ "$os" == "linux" ]]; then
	pacman -S git
fi
```

# clone .dotfiles
`git clone https://github.com/alexchaichan/.dotfiles.git ~/`

## store `.gnupg` file into `~/`

## run installation file

`source ~/.dotfiles/bootstrap.sh`

### [last steps per hand for osx](osx/lastperhand.md)

## [arch linux](arch/README.md/)
