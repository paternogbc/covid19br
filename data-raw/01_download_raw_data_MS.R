# Script to download and clean covid-19 data using the r-package coronabr
# Updated: 2020-03-19
library(coronabr)
library(brazilmaps)

# Get map and states uid
st_id <- read.csv("data-raw/raw_brazilian_states.csv") %>%
  mutate(state_uid = as.factor(state_uid))

# Get data from Ministério da Saúde
rd <- get_corona() %>%
  ungroup() %>%
  mutate(state_uid = as.factor(uid))

rd <- left_join(rd, st_id)

# Renaming variables
rd %>%
  select(state, state_ID, state_uid, suspected_cases = suspects,
         confirmed_cases =  cases, not_confirmed_cases = refuses, deaths, date) %>%
  filter(date > "2020-02-25") -> covid_br_states

# Summarise date for Brasil
covid_br_states %>%
  group_by(date) %>%
  summarise(suspected_cases = sum(suspected_cases, na.rm = TRUE),
            confirmed_cases = sum(confirmed_cases, na.rm = TRUE),
            not_confirmed_cases = sum(not_confirmed_cases, na.rm = TRUE),
            deaths = sum(deaths, na.rm = TRUE)) %>%
  mutate(state = "Brazil",
         state_ID = "BR") -> covid_br_all

# Save rocessed data ----------------------------------------------------------
usethis::use_data(covid_br_states, overwrite = TRUE)
usethis::use_data(covid_br_all, overwrite = TRUE)
