# Dracula readline configuration. Requires version 2.0, if you have 1.2 convert to `Set-PSReadlineOption -TokenType`
Set-PSReadlineOption -Color @{
    "Command" = [ConsoleColor]::Green
    "Parameter" = [ConsoleColor]::Gray
    "Operator" = [ConsoleColor]::Magenta
    "Variable" = [ConsoleColor]::White
    "String" = [ConsoleColor]::Yellow
    "Number" = [ConsoleColor]::Blue
    "Type" = [ConsoleColor]::Cyan
    "Comment" = [ConsoleColor]::DarkCyan
}

# keepass vault
$VaultParams = @{ Path = "C:\Users\a.chaichan\Database.kdbx"
     UseMasterPassword = $true
}

# import terminal icons
Import-Module -Name Terminal-Icons

Import-Module posh-git
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) " # arrow unicode symbol
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor =[ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) " # chevron unicode symbol
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta
# Dracula Git Status Configuration
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue

Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key "Tab" -Function MenuComplete
Set-PSReadlineKeyHandler -Key "UpArrow" -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key "DownArrow" -Function HistorySearchForward
Set-PSReadLineOption -Colors @{ InlinePrediction = '#6272a4'}
Set-PSReadlineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key "RightArrow" -ScriptBlock {
       param($key, $arg)

       $line = $null
       $cursor = $null
       [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)

       if ($cursor -lt $line.Length) {
           [Microsoft.PowerShell.PSConsoleReadLine]::ForwardChar($key, $arg)
       } else {
           [Microsoft.PowerShell.PSConsoleReadLine]::AcceptNextSuggestionWord($key, $arg)
       }
}

Set-PSReadLineKeyHandler -Key End -ScriptBlock {
       param($key, $arg)

       $line = $null
       $cursor = $null
       [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)

       if ($cursor -lt $line.Length) {
           [Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine($key, $arg)
       } else {
           [Microsoft.PowerShell.PSConsoleReadLine]::AcceptSuggestion($key, $arg)
       }
}

#Set-PSReadLineOption -PredictionViewStyle ListView

# prompt
function prompt {

    #Assign Windows Title Text
    $host.ui.RawUI.WindowTitle = "Windows PowerShell"

    #Configure current user, current folder and date outputs
    $CmdPromptCurrentFolder = $pwd
    $CmdPromptUser = [Security.Principal.WindowsIdentity]::GetCurrent();
    $Date = Get-Date -Format 'hh:mm:ss tt'

    # Test for Admin / Elevated
    $IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

    #Calculate execution time of last cmd and convert to milliseconds, seconds or minutes
    $LastCommand = Get-History -Count 1
    if ($lastCommand) { $RunTime = ($lastCommand.EndExecutionTime - $lastCommand.StartExecutionTime).TotalSeconds }

    if ($RunTime -ge 60) {
        $ts = [timespan]::fromseconds($RunTime)
        $min, $sec = ($ts.ToString("mm\:ss")).Split(":")
        $ElapsedTime = -join ($min, " min ", $sec, " sec")
    }
    else {
        $ElapsedTime = [math]::Round(($RunTime), 2)
        $ElapsedTime = -join (($ElapsedTime.ToString()), " sec")
    }

    #Decorate the CMD Prompt
    Write-Host ""
    Write-Host " 󰖳 " -BackgroundColor White -ForegroundColor Black -NoNewline
    Write-host ($(if ($IsAdmin) { 'Elevated ' } else { '' })) -BackgroundColor DarkBlue -ForegroundColor White -NoNewline
    Write-Host " $($CmdPromptUser.Name.split("\")[1]) " -BackgroundColor DarkBlue -ForegroundColor White -NoNewline
    If ($CmdPromptCurrentFolder -like "*:*")
        {Write-Host " $CmdPromptCurrentFolder "  -ForegroundColor White -BackgroundColor Magenta -NoNewline}
        else {Write-Host ".\$CmdPromptCurrentFolder\ "  -ForegroundColor White -BackgroundColor Magenta -NoNewline}

    Write-Host " $date " -BackgroundColor DarkYellow -ForegroundColor Black -NoNewline
    Write-Host " $elapsedTime " -BackgroundColor Cyan -ForegroundColor Black -NoNewline
    return "  "
} #end prompt function

# terminal icons
Import-Module -Name Terminal-Icons

$Env:LF_ICONS = "$HOME\AppData\Local\lf\icons"

## fzf 

# hotkeys
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# prompt
$Env:FZF_DEFAULT_OPTS = '--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'


#### functions ####

## text-editor
function editor($1) {

     & 'C:\Users\a.chaichan\scoop\apps\sublime-text\current\sublime_text.exe' $1

}

#function editor($1) {
#
#     & 'C:\Program Files\Notepad++\notepad++.exe' $1
#
#}

## which equivalent
function which($1) {

     (Get-Command $1).Path 

}

function piper($1) {
    pip install --user --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org $1
}

function vim($1) {
    .$HOME\scoop\shims\nvim.exe  $1
}

function lf($1){
  .$HOME\scoop\shims\lf.exe -command "set icons" $1
}

function gitpush(){
  git add .
  git commit -m 'update'
  git push
}

function pull-dots(){
  cd $HOME\.dotfiles ; git pull
  cd $HOME\cheatsheets ; git pull
  cd $HOME
}

function push-dots(){
  cd $HOME\.dotfiles ; gitpush
  cd $HOME\cheatsheets ; gitpush
  cd $HOME
}

function dots(){
  cd $HOME\.dotfiles
}

# end
clear
