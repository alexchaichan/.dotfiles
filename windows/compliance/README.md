powershell -noprofile -command "Install-Module PSReadLine -Force -SkipPublisherCheck -AllowPrerelease"
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

- install modules

```powershell
#Install-Module -Name PowerShellGet -Force -Scope CurrentUser -AllowClobber
Install-Module -Name PowerShellGet -Force -Scope CurrentUser
winget install JanDeDobbeleer.OhMyPosh -s winget
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
```

- install modules 

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery
```

- install apps

```powershell
winget install Git.Git
winget install --source winget --exact --id JohnMacFarlane.Pandoc
winget install -e --id Microsoft.VisualStudioCode
winget install qutebrowser
#winget install brave.Brave
winget install -e --id Anaconda.Miniconda3
winget install -e --id RProject.R
Install-Module -Name PSFzf
```

```powershell
git config --global http.sslbackend schannel
```

- Edit environment variables:

```
Variable name: ANACONDA_HOME
Variable value: C:\Users\a.chaichan\AppData\Local\miniconda3
```

- make pip work (sometimes)

```
pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org pip setuptools
```

- install r packages

```r
install.packages(c('rmarkdown', 'sass', 'cachem', 'tidyverse', 'reticulate'))
```

- pyenv

```powershell
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"
```

- install rust (download and execute)
https://win.rustup.rs/x86_64

- install scoop
```powershell
irm get.scoop.sh | iex
```

install scoops
```powershell
scoop install spotify-tui
scoop install lf
scoop install bat
scoop install nvim
scoop install fzf
scoop bucket add extras
scoop install extras/rstudio
scoop install sublime-text
```
