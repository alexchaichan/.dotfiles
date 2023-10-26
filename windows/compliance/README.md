```
powershell -noprofile -command "Install-Module PSReadLine -Force -SkipPublisherCheck -AllowPrerelease"
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

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
Install-Module -Name PSFzf
```

- install apps

```powershell
#winget install Git.Git
#winget install --source winget --exact --id JohnMacFarlane.Pandoc
#winget install -e --id Microsoft.VisualStudioCode
#winget install qutebrowser
#winget install brave.Brave
#winget install -e --id Anaconda.Miniconda3
#winget install -e --id RProject.R
#
```

```powershell
git config --global http.sslbackend schannel
```

- Edit environment variables:

```
Variable name: ANACONDA_HOME
Variable value: C:\Users\a.chaichan\AppData\Local\miniconda3

Variable name: Path
Variable values:
C:\Users\a.chaichan\AppData\Roaming\Python\Python312\Scripts
C:\Users\a.chaichan\AppData\Local\Microsoft\WinGet\Packages\gokcehan.lf_Microsoft.Winget.Source_8wekyb3d8bbwe
C:\Users\a.chaichan\AppData\Roaming\Python\Python310\Scripts
C:\Users\a.chaichan\AppData\Roaming\Python\Python312\Scripts
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

```powershell
#https://win.rustup.rs/x86_64
```

- install scoop
```powershell
irm get.scoop.sh | iex
```

install scoops
```powershell
scoop install spotify-tui
scoop install lf
scoop install bat
scoop install neovim
scoop install fzf
scoop bucket add extras
scoop install extras/rstudio
scoop install r
scoop install sublime-text
scoop install miniconda
scoop install pandoc
scoop install rust
scoop instsall git
scoop install bat
scoop install neofetch
scoop install btop
scoop install gcc
```



nvim
```powershell
cd $HOME\AppData\Local\nvim\pack\plugins\start\
git clone https://github.com/akinsho/bufferline.nvim.git
git clone https://github.com/nvim-lualine/lualine.nvim.git
git clone https://github.com/windwp/nvim-autopairs.git
git clone https://github.com/nvim-tree/nvim-tree.lua.git
git clone https://github.com/nvim-treesitter/nvim-treesitter.git
git clone https://github.com/terrortylor/nvim-comment.git
git clone https://github.com/nvim-telescope/telescope.nvim.git
git clone https://github.com/dracula/vim.git
git clone https://github.com/hrsh7th/nvim-cmp.git
git clone https://github.com/nvim-lua/plenary.nvim.git
```
