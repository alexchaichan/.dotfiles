######################################################################
# aliasas						          #
######################################################################

# open this file
funs(){
    vim $DOTFILES/zsh/functions.sh
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
#

schoko(){
    cd ~/Dropbox/uni/schokolade/ && vim notebook.rmd
}

modeling(){
    cd ~/Dropbox/uni/modeling/ && vim notebook.rmd
}


synchro(){
    vdirsyncer discover my_contacts
    vdirsyncer discover my_calendar
    vdirsyncer sync
    mbsync icloud
}


todo(){
    vim ~/Dropbox/todo.md
}

odot(){
    glow ~/Dropbox/todo.md
}






#####################################################
# zsh functions                                     #
#####################################################

#
# ZSH functions to start/stop OpenConnect VPN client
# 
#
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

alias PlugUpdate="cd ~/.config/nvim/pack/plugins/start && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd ~/zsh/ && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd ~/.tmux/ && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd" 

########################################################################################################## 



########################################################################################################## 
# templates                                                                                              #
########################################################################################################## 

# when its come to create markdown documents use this 


# 1st link, when want to sent it push it do 2nd copie


links(){
    rm -rf wordcount.lua literature.bib styles .Rprofile && ln -sf ~/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && ln -sf ~/.dotfiles/styles "$(pwd)" && ln -sf ~/Dropbox/googlebox/literature.bib "$(pwd)" && ln -sf ~/.dotfiles/R/.Rprofile "$(pwd)"
}

copies(){
rm -rf wordcount.lua literature.bib styles .Rprofile && cp ~/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && cp -rf ~/.dotfiles/styles "$(pwd)" && cp ~/Dropbox/googlebox/literature.bib "$(pwd)" && cp ~/.dotfiles/R/.Rprofile "$(pwd)"
}

pdf(){
    cp ~/.dotfiles/Templates/pdf.rmd "$(pwd)"
}

html(){
    cp ~/.dotfiles/Templates/html.rmd "$(pwd)"
}

letter(){
    cp ~/.dotfiles/Templates/letter.rmd "$(pwd)"
}

pptx(){
    cp ~/.dotfiles/Templates/pptx.rmd "$(pwd)"
}

word(){
    cp ~/.dotfiles/Templates/word.rmd "$(pwd)"
}
