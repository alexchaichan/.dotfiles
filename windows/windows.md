# install chocolatey

1. open powershell as admin

- Run `Get-ExecutionPolicy`. If it returns "Restricted", then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`

- `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

# install scoop

- `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time`
- irm get.scoop.sh | iex

- close powershell

# install programms

2. open powershell

```
choco install git alacritty qutebrowser neovim
```
