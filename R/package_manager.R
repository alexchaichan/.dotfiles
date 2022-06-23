#!/usr/bin/env R

# source package-list
source(paste0(Sys.getenv('HOME'),'/.dotfiles/R/packages.R'))

# install from CRAN
installed_packages <- packages %in% rownames(installed.packages())

if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages], repos = "https://cloud.r-project.org")
}

# install from GitHub
installed_remotes <- c()

for (i in github) {
  installed_remotes[i] <- strsplit(i, split='/')[[1]][[2]] %in% rownames(installed.packages())
}

if (any(installed_remotes == FALSE)) {
    remotes::install_github(github[!installed_remotes])
}