# Clone only neovim

- export

```
export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export VDOTDIR=$HOME/.config/nvim
```

- clone only nvim

`git clone --depth 1 --filter=blob:none --no-checkout https://github.com/alexchaichan/.dotfiles.git $VDOTDIR ; cd $VDOTDIR ; git checkout main -- nvim/nvim.lua ; cd && mv $VDOTDIR/nvim/nvim.lua ~/.config && rm -rf $VDOTDIR && mv ~/.config/nvim.lua ~/.config/nvim`

- create directories

`mkdir $VDOTDIR/pack/ && mkdir $VDOTDIR/pack/plugins/ && mkdir $VDOTDIR/pack/plugins/start && mkdir $VDOTDIR/pack/plugins/opt && mkdir $VDOTDIR/spell`

- install all plugins

```
function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
```
![hi](~/.dotfiles/nvim/plugins.sh)
