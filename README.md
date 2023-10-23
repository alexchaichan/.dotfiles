## package manager

```
if [[ "$(uname)" == "Darwin" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
  pacman -Sy
fi
```

## git

```
if [[ "$(uname)" == "Darwin" ]]; then
    brew install git
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    sudo pacman -S git
fi
```

## clone `.dotfiles`

`git clone https://github.com/alexchaichan/.dotfiles.git ~/.dotfiles`

## store [`.password-store`](https://github.com/alexchaichan/.password-store/archive/refs/heads/main.zip) into `~/`

`mv ~/Downloads/password-store-main/.password-store-main/ ~/.password-store/`

## store [`.gnupg`](https://drive.proton.me/urls/1K1QVY03ZC#8nRtoDHTIi6J) into `~/`

```
unzip ~/Downloads/gnupg.zip -d ~/Downloads/ && mv ~/Downloads/gnupg ~/.gnupg
```

## store [`.ssh`](https://drive.proton.me/urls/ZMK4QJ66H4#OTp4ouSzq31D) into `~/`

```
unzip ~/Downloads/ssh.zip -d ~/Downloads/ && mv ~/Downloads/ssh ~/.ssh
```

## run installation file

`~/.dotfiles/bootstrap`

<!-- ## calcurse config -->
<!---->
<!-- ``` -->
<!-- calcurse-caldav --init=two-way -->
<!---->
<!-- ln -sf ~/Dropbox/iphone/todo ~/.calcurse -->
<!-- ``` -->

