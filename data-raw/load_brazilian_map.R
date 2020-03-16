# Script to generate brazilian map with states
library(geobr)

states <- read_state(year=2018)

# save to processed data
usethis::use_data(states, overwrite = TRUE)
