# qutebrowser virtual einvironment
git clone https://github.com/qutebrowser/qutebrowser.git
cd qutebrowser
python3 scripts/mkvenv.py
# password manager script for pass x qutebrowser
cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser

# pandoc
git clone https://github.com/pandoc/lua-filters.git ~/.local/share/pandoc/filters