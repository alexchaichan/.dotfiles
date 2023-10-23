# Setup WSL for windows

- Windows-Features -> activate: 
	[x] Windows-Subsystem for Linux 
	[x] VM-Plattform

- open PowerShell:

```
wsl --set-default-version 2
wsl --install -d Ubuntu 
```

- install chocholatly

`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

- place `alacritty.yml` into right directory 

- install programms for windows

```
winget install alacritty
winget install Git.Git
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install neovim
```

- activate prompt

`oh-my-posh --init  | Invoke-Expression`

`oh-my-posh init pwsh --config ~\AppData\Local\oh-my-posh\dracula.omp.json | Invoke-Expression`        

- create directories

```
mkdir $HOME/Downloads
mkdir $HOME/Documents
mkdit $HOME/.config
mkdir $HOME/.fonts 
```

- install alacritty for linux: 

`sudo add-apt-repository ppa:aslatter/ppa -y  && sudo apt install alacritty`


# nerdfont

- install nerdfont for linux

```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/SourceCodePro.zip

unzip SourceCodePro.zip

mv *.ttf ~/.fonts
```

- install nerdfont for windows 
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/SourceCodePro.zip
	

# qutebrowser userscripts
https://www.ii.com/qutebrowser-userscripts-on-windows/

# install

```
sudo apt install git neovim pass pass-git-helper ruby ruby-devel neomutt fzf neofetch vdirsyncer isync pinentry-tty ranger khard tldextract neofetch btop tmux

sudo gem install colorls
```

# sym-links


