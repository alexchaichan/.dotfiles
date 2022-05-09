#!/usr/bin/env R

## install r packages

install.packages(
  c(
    "tidyverse",
    "languageserver",
    "DescTools",
    "komaletter",
    "lubridate",
    "data.table",
    "psych",
    "summarytools",
    "gt",
    "shiny",
    "markdown",
    "DT",
    "devtools",
    "here",
    "forecast",
    "highcharter",
    "janitor",
    "timetk",
    "randomcoloR",
    "ggThemeAssist",
    "readxl",
    "languageserver",
    "rticles",
    "bookdown",
    "wbstats",
    "ggdag",
    "dagitty",
  ),
  repos = "https://cloud.r-project.org"
)


devtools::install_github(
  c(
    "IRkernel/IRkernel",
    "ngay/kustats")
   )

## install dependencies

IRkernel::installspec()
