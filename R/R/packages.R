#!/usr/bin/env R

## install r packages

source ~/.dotfiles/R/packages.R

install.packages(
  packages, repos = "https://cloud.r-project.org"
)

devtools::install_github(
  c(
    "IRkernel/IRkernel",
    "ngay/kustats")
   )

## install dependencies

IRkernel::installspec()
