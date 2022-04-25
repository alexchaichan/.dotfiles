packages <- c("tidyverse","")

installed_packages <- packages %in% rownames(installed.packages())

if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# invisible(lapply(packages, library, character.only = TRUE))

source("scripts/read_data.R")
source("scripts/clean_data.R")
