######################################################################
# osx alias							                                             #
######################################################################

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


#####################################################
# zsh functions                                     #
#####################################################

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
