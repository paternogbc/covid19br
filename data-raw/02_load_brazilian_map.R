# Script to generate brazilian map with states
library(geobr)

map_states  <- read_state(year=2018)
map_regions <- read_region(year=2018)

# save to processed data
usethis::use_data(map_states, overwrite = TRUE)
usethis::use_data(map_regions, overwrite = TRUE)

