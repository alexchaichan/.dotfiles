######################################################################
# aliasas						          #
######################################################################

# open $DOTDIR repo
dots(){
  cd $DOTFILES
}

# open this file
funs(){
    vim $DOTFILES/zsh/zsh/functions.zsh
}

######################################################################
#git 						                  #
######################################################################

# quick push git
gitpush(){
  pass +
  git add .
  git commit -m "update"
  git push
}

# pull all repos start searching from actual directory
alias gitpullall="find . -maxdepth 300 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull"

######################################################################

# bat out .password-store repo
passwort(){
    pass | bat
}

# ls wit flags
l(){
    ls -a --color=auto $1
}

# get easy keyboard hex codes
hex(){
    xxd -psd
}

# check weather in stadard location
weather(){
    curl v2d.wttr.in/Kassel
}

# check weather in $1 location
wetter(){
    curl v2d.wttr.in/$1
}

# open neomutt
mutt() {
    stty discard undef
    neomutt
}

# open qutebrowser with $1
qute(){
    qutebrowser $1
}

# open neovim
vim(){
   nvim $1
}

# open w3m terminal browser
w3mb(){
    w3m -B
}

# alias for projects

schoko(){

    nvim ~/Dropbox/uni/schokolade
}

modeling(){
    nvim ~/Dropbox/uni/modeling/
  }

synchro(){
    vdirsyncer discover my_contacts
    vdirsyncer discover my_calendar
    vdirsyncer sync
    mbsync icloud
}

todo(){
    vim $DROPBOX/todo.md
}

odot(){
    glow $DROPBOX/todo.md
}

# check if spotifyd daemon is running. if not run pkill spotifyd (get error code of first command and then to if else)
spt(){
  launchctl list | grep spotifyd
  if [ "$?" -eq "0" ]
  then
    /usr/local/bin/spt
  else
    pkill spotifyd && /usr/local/bin/spt
  fi
}

#####################################################
# zsh functions                                     #
#####################################################

# ZSH functions to start/stop OpenConnect VPN client

export VPN_HOST=https://vpn.uni-kassel.de/

function vpn-up() {
  if [[ -z $VPN_HOST ]]
  then
    echo "Please set VPN_HOST env var"
    return
  fi
  echo "Starting the vpn ..."
  sudo openconnect  --user=uk069555 --servercert pin-sha256:Aq5S0+QpnxCg3f/QopnL9bvJA09x1c1mmEhH79quzng= $VPN_HOST
}

function vpn-down() {
  sudo kill -2 `pgrep openconnect`
}

### function to connect to the hiwi server

# connect(){
#     osascript ~/Dropbox/.config/connect.scpt
# }

# disconnect

disconnect(){
    umount /Volumes/Chaichan ; umount /Volumes/uk069555
}

##########################################################################################################
#pluginmanager                                                                                           #
##########################################################################################################

# zsh
function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$ZDOTDIR/$PLUGIN_NAME"
}

#neovim
function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
}

#tmux
function tmux_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$TDOTDIR/plugins/$PLUGIN_NAME"
}

alias PlugUpdate="cd $VDOTDIR/pack/plugins/start && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd $ZDOTDIR && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd $TDOTDIR && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd"

##########################################################################################################
# templates                                                                                              #
##########################################################################################################

# when its come to create markdown documents use this

# 1st link, when want to sent it push it do 2nd copie

links(){
    rm -rf wordcount.lua literature.bib styles .Rprofile && ln -sf ~/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && ln -sf $DOTFILES/styles "$(pwd)" && ln -sf $DROPBOX/googlebox/literature.bib "$(pwd)" && ln -sf $DOTFILES/R/.Rprofile "$(pwd)"
}

copies(){
rm -rf wordcount.lua literature.bib styles .Rprofile && cp $HOME/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && cp -rf $DOTFILES/styles "$(pwd)" && cp $DROPBOX/googlebox/literature.bib "$(pwd)" && cp $DOTFILES/R/.Rprofile "$(pwd)"
}

pdf(){
    cp $DOTFILES/Templates/pdf.rmd "$(pwd)"
}

html(){
    cp $DOTFILES/Templates/html.rmd "$(pwd)"
}

letter(){
    cp $DOTFILES/Templates/letter.rmd "$(pwd)"
}

pptx(){
    cp $DOTFILES/Templates/pptx.rmd "$(pwd)"
}

word(){
    cp $DOTFILES/Templates/word.rmd "$(pwd)"
}


#####################################################
# zsh functions mac                                 #
#####################################################

if [[ "$os" == "osx" ]]; then

audiomidisetup(){
  /usr/bin/open -a "Audio MIDI Setup"
}

terminal(){
    /usr/bin/open -a Terminal
}

safari(){
    /usr/bin/open -a Safari $1
}

psychopy(){
    /usr/bin/open -a psychopy
}

messages(){
    /usr/bin/open -a Messages
}

zoom(){
    /usr/bin/open -a zoom.us
}

firefox(){
    /usr/bin/open -a Firefox $1
}

diskutility(){
    /usr/bin/open -a "Disk Utility"
}

csv(){
    /usr/bin/open -a "Easy CSV Editor"
}

json(){
    /usr/bin/open -a "JSON Editor"
}

plist(){
    /usr/bin/open -a "PLIST Editor"
}

powerpoint(){
    /usr/bin/open -a "Microsoft PowerPoint" $1
}

dropbox(){
    /usr/bin/open -a Dropbox
}

maps(){
    /usr/bin/open -a Maps
}

facetime(){
    /usr/bin/open -a FaceTime
}

system(){
    /usr/bin/open -a "System Preferences"
}

appstore(){
    /usr/bin/open -a "App Store"
}

preview(){
    /usr/bin/open -a Preview $1
}

pycharm(){
    /usr/bin/open -a 'pycharm CE' $1
}

rstudio(){
    /usr/bin/open -a Rstudio $1
}

######################################################################

# update & upgrade brew
update(){
    brew update && brew upgrade && brew cleanup && brew outdated && brew cu
}

# zsh functions to start/stop OpenConnect VPN client

# define vpn host
export VPN_HOST=https://vpn.uni-kassel.de/

function vpn-up() {
  if [[ -z $VPN_HOST ]]
  then
    echo "Please set VPN_HOST env var"
    return
  fi
  echo "Starting the vpn ..."
  sudo openconnect  --user=uk069555 --servercert pin-sha256:Aq5S0+QpnxCg3f/QopnL9bvJA09x1c1mmEhH79quzng= $VPN_HOST
}

function vpn-down() {
  sudo kill -2 `pgrep openconnect`
}

### osa script to connect to the hiwi server

# connect(){
#     osascript ~/Dropbox/.config/connect.scpt
# }

# disconnect from hiwi server
disconnect(){
    umount /Volumes/Chaichan ; umount /Volumes/uk069555
}

fi
#####################################################
# zsh functions linux                               #
#####################################################

if [[ "$os" == "linux" ]]; then

# set the display on the imac to 100%
licht(){
   brightnessctl set 100%
}

# connect magic mous
mm(){
    bluetoothctl connect 04:4B:ED:D2:45:CF
}

fi
