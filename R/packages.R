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
    "articles",
    "bookdown"
  ),
  repos = "https://cloud.r-project.org"
)

devtools::install_github("IRkernel/IRkernel")

## install dependencies

IRkernel::installspec()
