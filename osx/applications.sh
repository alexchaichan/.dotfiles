#!/usr/bin/env bash

# qutebrowser (virtual environment)
git clone https://github.com/qutebrowser/qutebrowser.git
cd qutebrowser
python3 scripts/mkvenv.py
cd ~/
# password manager script for pass x qutebrowser

# qutebrowser (application)
wget https://github.com/qutebrowser/qutebrowser/releases/download/v2.4.0/qutebrowser-2.4.0.dmg
hdiutil attach qutebrowser-2.4.0.dmg
cp -R /Volumes/qutebrowser/qutebrowser.app /Applications
cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser
rm qutebrowser-2.4.0.dmg


# amphetamine
wget https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg
hdiutil attach Amphetamine\ Enhancer.dmg
cp -R /Volumes/Amphetamine\ Enhancer/Amphetamine\ Enhancer.app /Applications
