## call and install packages ---------------------------------------------------
recall_packages <- function(pkgs) {
  for (pkg in pkgs) {
    if (!require(pkg, character.only=T, quietly = T)) {
      install.packages(pkg)
      library(pkg, character.only=T)
    }
  }
}

## General ---------------------------------------------------------------------
c(
  "tidyverse", 
  "knitr", 
  "bookdown",
  "readxl"
  ) |>
  recall_packages()
