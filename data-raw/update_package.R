# Script to update the data and package articles

# Re-generate data
source("data-raw/01_download_raw_data_MS.R")
source("data-raw/02_load_brazilian_map.R")
source("data-raw/03_process_states_info.R")

# Knit index and REAMDE
knitr::knit("index.Rmd")
knitr::knit("README.Rmd")

# Update and check package
devtools::document()
devtools::install()

# Build site
pkgdown::clean_site()
pkgdown::build_site()

# check package
devtools::check()
