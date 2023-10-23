mkdir $HOME/.vscode ; mkdir $HOME/.vscode/extensions ; ln -sf $DOTFILES/vscode/.vscode/argv.json $HOME/.vscode/

sudo ln -sf $DOTFILES/vscode/settings.json $HOME/Library/Application\ Support/Code/User

sudo ln -sf $DOTFILES/snippets/ $HOME/Library/Application\ Support/Code/User

sudo ln -sf $DOTFILES/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User
