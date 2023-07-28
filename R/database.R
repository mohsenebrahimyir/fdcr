## READ DATABASE ---------------------------------------------------------------
xlsx_path <- "./data/live-system-review.xlsx"
included <- readxl::read_xlsx(xlsx_path, "Included", skip = 1)