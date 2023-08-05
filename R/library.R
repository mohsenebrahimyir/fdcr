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
  "readxl",
  "kableExtra"
  ) |>
  recall_packages()


## My Table Style --------------------------------------------------------------
my_table_style <- function(dt) {
  dt <- dt |> 
    kable_classic() |>
    kable_styling(
      latex_options = "hold_position",
      full_width = TRUE,
      html_font = "Roboto",
      fixed_thead = T,
      bootstrap_options = c("striped", "hover", "condensed", "responsive")
    )
  
  return(dt)
}