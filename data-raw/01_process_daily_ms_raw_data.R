# Script to process raw data
# Updated: 2020/03/17
# Packages--------------------------------------------------------------------------------
library(janitor)
library(tidyverse)
library(lubridate)
source("data-raw/utils.R")

# Initial dataset-------------------------------------------------------------------------
d1 <- read_csv("data-raw/raw_data_covid_19_br_initial_ms.csv")

# transform to Date
d1$date <- ymd(d1$date)

# Daily datasets--------------------------------------------------------------------------
# get file names
fl      <-  list.files("data-raw/ms_raw_csv/")
fl_date <- str_split(string = fl, pattern = "\\.", simplify = TRUE)[, 1]
path    <- paste("data-raw/ms_raw_csv/",fl, sep = "")

# load files
dats <- lapply(path, read_csv)
dats <- mapply(cbind, dats, "date" = as.Date(fl_date), SIMPLIFY = F)
dats <- lapply(dats, clean_ms_data)

# Updated data for each state--------------------------------------------------
covid_br_states <- bind_rows(d1, dats)

# Updated data for Brazil ------------------------------------------------------
covid_br_states %>%
  group_by(date) %>%
  summarise(state = "Brazil", state_ID = "BR",
            suspected_cases = sum(suspected_cases, na.rm = TRUE),
            confirmed_cases = sum(confirmed_cases, na.rm = TRUE),
            not_confirmed_cases = sum(not_confirmed_cases, na.rm = TRUE),
            deaths = sum(deaths, na.rm = TRUE)) -> covid_br_all

# Save rocessed data ----------------------------------------------------------
usethis::use_data(covid_br_states, overwrite = TRUE)
usethis::use_data(covid_br_all, overwrite = TRUE)

# Check----
ggplot(data = covid_br_states, aes(y = confirmed_cases, x = date)) +
  geom_line(aes(color = state)) +
  facet_wrap(~state) +
  geom_line(data = covid_br_all, color = "black")
