# Clone only neovim

- export

```
export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export VDOTDIR=$HOME/.config/nvim
```

- clone only nvim

```
mv $VDOTDIR ~/.config/nvim_old && git clone --depth 1 --filter=blob:none --no-checkout https://github.com/alexchaichan/.dotfiles.git $VDOTDIR ; cd $VDOTDIR ; git checkout main -- nvim/nvim.lua ; cd && mv $VDOTDIR/nvim/nvim.lua ~/.config && rm -rf $VDOTDIR && mv ~/.config/nvim.lua $VDOTDIR
```

- create directories

```
mkdir $VDOTDIR/pack/ && mkdir $VDOTDIR/pack/plugins/ && mkdir $VDOTDIR/pack/plugins/start && mkdir $VDOTDIR/pack/plugins/opt && mkdir $VDOTDIR/spell
```

- install all [plugins](plugins.sh)

```
function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"

source $DOTFILES/nvim/plugins.sh

for i in $vim_plugins;
  do vim_add_plugin $i;
done
```
