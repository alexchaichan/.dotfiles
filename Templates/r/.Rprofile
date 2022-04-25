.First <- function(){
invisible(lapply(.Options$defaultPackages, function(x) library(x, character.only=TRUE)))
 library(tidyverse)
 library(lubridate)

local({r <- getOption("repos")
    r["CRAN"] <- "http://cran.r-project.org"  
    options(repos=r)
})

local({
    Sys.setenv(LANGUAGE="en")
})

}

