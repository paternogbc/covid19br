# Script to download and clean covid-19 data using the r-package coronabr
# Updated: 2020-03-19
rm(list = ls())

# Update the last version of coronabr
remotes::install_github("liibre/coronabr", force = TRUE)

# Packages
library(tidyverse)
library(coronabr)

# Get map and states uid
st_id <- read.csv("data-raw/raw_brazilian_states.csv") %>%
  mutate(state_uid = as.factor(state_uid))

# Get data from Ministério da Saúde
tdy <- Sys.Date()
rd <- get_corona(dir = "data-raw/downloaded_data_covid-19_IVIS/", filename = paste(tdy, "_raw_covid-19_data_", sep = '')) %>%
  ungroup() %>%
  mutate(state_uid = as.factor(uid))

rd <- left_join(rd, st_id)

# Renaming variables
rd %>%
  select(state, state_ID, state_uid, suspected_cases = suspects,
         confirmed_cases =  cases, not_confirmed_cases = refuses, deaths, date) %>%
  filter(date > "2020-02-25") -> covid_states


# Add regions
# Full data (states, regions and Brazil)
NO <- c("AC", "AM", "RR", "AP", "TO", "RO", "PA")
NS <- c("MA", "PI", "CE", "RN", "PE", "PB", "SE", "AL", "BA")
CO <- c("MT", "MS", "GO", "DF")
SD <- c("SP", "RJ", "ES", "MG")
SU <- c("PR", "RS", "SC")

covid_states <-
  covid_states %>%
  mutate(region = case_when(
    state_ID %in% NO ~ "Norte",
    state_ID %in% NS ~ "Nordeste",
    state_ID %in% CO ~ "Centro Oeste",
    state_ID %in% SD ~ "Sudeste",
    state_ID %in% SU ~ "Sul",
  )) %>%
  select(region, everything())

# Summarise date for Brasil
covid_states %>%
  group_by(date) %>%
  summarise(suspected_cases = sum(suspected_cases, na.rm = TRUE),
            confirmed_cases = sum(confirmed_cases, na.rm = TRUE),
            not_confirmed_cases = sum(not_confirmed_cases, na.rm = TRUE),
            deaths = sum(deaths, na.rm = TRUE)) %>%
  mutate(state = "Brazil",
         state_ID  = "BR",
         state_uid = NA,
         region    = NA) %>%
  select(names(covid_states)) -> covid_br

# Summarise date for Brazilian regions
covid_states %>%
  group_by(date, region) %>%
  summarise(suspected_cases = sum(suspected_cases, na.rm = TRUE),
            confirmed_cases = sum(confirmed_cases, na.rm = TRUE),
            not_confirmed_cases = sum(not_confirmed_cases, na.rm = TRUE),
            deaths = sum(deaths, na.rm = TRUE)) %>%
  mutate(state = NA,
         state_ID  = NA,
         state_uid = NA) %>%
  select(names(covid_states)) -> covid_regions

# Check data
# States
ggplot(covid_states, aes(y = confirmed_cases, x = date, color = state)) +
  geom_line() +
  facet_wrap(~state)
# Regions
ggplot(covid_regions, aes(y = confirmed_cases, x = date, color = region)) +
  geom_line() +
  facet_wrap(~region)
# Brazil
ggplot(covid_br, aes(y = confirmed_cases, x = date)) +
  geom_line()

# Save rocessed data ----------------------------------------------------------
usethis::use_data(covid_br, overwrite = TRUE)
usethis::use_data(covid_states, overwrite = TRUE)
usethis::use_data(covid_regions, overwrite = TRUE)
