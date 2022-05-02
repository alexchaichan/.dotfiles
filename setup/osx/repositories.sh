# qutebrowser virtual einvironment

pip install PyQtWebEngine
pip3 install qutebrowser
pip3 install asciidoc
pip3 install adblock
pip uninstall tldextract

git clone https://github.com/qutebrowser/qutebrowser.git

cd qutebrowser

python3 scripts/mkvenv.py

# password manager script for pass x qutebrowser
cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser
