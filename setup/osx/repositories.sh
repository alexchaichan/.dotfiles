# qutebrowser virtual einvironment
git clone https://github.com/qutebrowser/qutebrowser.git
cd qutebrowser
python3 scripts/mkvenv.py
# password manager script for pass x qutebrowser
cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser

# pandoc
git clone https://github.com/pandoc/lua-filters.git ~/.local/share/pandoc/filters

# repos
git clone https://github.com/alexchaichan/markdown_training.git ~/repositories

git clone https://github.com/alexchaichan/R.git ~/repositories

git clone https://github.com/alexchaichan/forschungsberichte_und_empirische_abschlussarbeiten.git ~/repositories
