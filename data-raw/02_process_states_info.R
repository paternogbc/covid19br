# Script to process state data
info_states <- read.csv("data-raw/raw_brazilian_states.csv")

# save to processed data
usethis::use_data(info_states, overwrite = TRUE)
