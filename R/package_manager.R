installed_packages <- packages %in% rownames(installed.packages())

if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
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
