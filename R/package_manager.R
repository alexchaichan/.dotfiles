#!/usr/bin/env R

source(paste0(Sys.getenv('HOME'),'/.dotfiles/R/packages.R'))

installed_packages <- packages %in% rownames(installed.packages())

if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages], repos = "https://cloud.r-project.org")
}

# prefix <- c("/")
# remotes <- c("")
#
# installed_remotes <- remotes %in% rownames(installed.packages())
#
# if (any(installed_remotes == FALSE)) {
# remotes::install_github(paste0(prefix,remotes[!installed_remotes]))
# }
#
# invisible(lapply(remotes, library, character.only = TRUE))
#
#
