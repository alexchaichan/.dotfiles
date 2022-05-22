# install Chocolatey

1. open powershell as admin

- Run `Get-ExecutionPolicy`. If it returns "Restricted", then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`

- `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

- close powershell

# install programms

2. open powershell

```
choco install git alacritty
```
