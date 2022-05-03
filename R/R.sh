#!/usr/bin/env bash

# symlinks Rstudio
ln -sf ~/.dotfiles/rstudio/rstudio-prefs.json ~/.config/rstudio
ln -sf ~/.dotfiles/nvim/snips/r.snippets ~/.config/rstudio/snippets

# install R packages
Rscript ~/.dotfiles/setup/osx/packages.R
