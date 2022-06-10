#!/usr/bin/env bash

source $DOTFILES/cheatsheets/cheatsheets.sh

for i in $cheatsheets_R;
  do cd $HOME/cheatsheets/R; wget $i; cd;
done

for i in $cheatsheets_python;
  do cd $HOME/cheatsheets/python; wget $i; cd;
done

for i in $cheatsheet_conda;
 do cd $HOME/cheatsheets/conda; wget $i; cd;
done
