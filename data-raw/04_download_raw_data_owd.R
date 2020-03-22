# Script to download raw data from Our World in Data
# Updated: 2020-03-22
rm(list = ls())

# Packages
library(tidyverse)

# Dowload data
covid_owd <- read_csv("https://covid.ourworldindata.org/data/ecdc/full_data.csv")

covid_owd %>%
  select(state =  location, confirmed_cases = total_cases, deaths = total_deaths, date) ->
  covid_global

# Stored downloaded data
tdy  <- Sys.Date()
path <- paste("data-raw/downloaded_data_covid-19_OWD/", tdy, "_OWD.csv", sep = "")
write_csv(covid_global, path = path)

# Save rocessed data ----------------------------------------------------------
usethis::use_data(covid_global, overwrite = TRUE)
