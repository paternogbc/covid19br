# Script to process state data
info_states <- read.csv("data-raw/raw_brazilian_states.csv")
info_states %>%
  mutate(state_uid = as.factor(state_uid))

# save to processed data
usethis::use_data(info_states, overwrite = TRUE)
