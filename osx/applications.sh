#!/usr/bin/env bash

# amphetamine
cd $HOME
wget https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg
hdiutil attach Amphetamine\ Enhancer.dmg
cp -R /Volumes/Amphetamine\ Enhancer/Amphetamine\ Enhancer.app /Applications
rm Amphetamine\ Enhancer.dmg

## r switch
# cd $HOME
# wget https://rud.is/rswitch/releases/RSwitch-1.7.0.app.zip
# unzip $HOME/RSwitch-1.7.0.app.zip -d /Applications
# ln -s /Applications/RSwitch.app/Contents/Resources/rswitch-cmd /usr/local/bin/rswitch 

# zathura
# source $DOTFILES/zathura/installer.sh

# mysqlworkbench
# brew reinstall --cask $DOTFILES/sql/mysqlworkbench/mysqlworkbench.rb
