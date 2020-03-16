# Script to process raw data
# Updated: 2020/16/03

# Packages ----------------------------------------------------------------
library(tidyverse)
library(lubridate)
library(cowplot)

# Load data ---------------------------------------------------------------
rd <- read_csv(file = "data-raw/raw_data_covid_19_br.csv")

# Fix dates ---------------------------------------------------------------
rd$date <- ymd(rd$date)
covid_br_states <- rd

# Calculate sum of cases for Brazil ---------------------------------------
rd %>%
  group_by(date) %>%
  summarise(state = "Brazil", state_ID = "BR",
            suspected_cases = sum(suspected_cases, na.rm = TRUE),
            confirmed_cases = sum(confirmed_cases, na.rm = TRUE),
            not_confirmed_cases = sum(not_confirmed_cases, na.rm = TRUE)) -> covid_br_all


# Processed data ----------------------------------------------------------
usethis::use_data(covid_br_states, overwrite = TRUE)
usethis::use_data(covid_br_all, overwrite = TRUE)

# Check----
ggplot(data = rd, aes(y = confirmed_cases, x = date)) +
  geom_line(aes(color = state)) +
  facet_wrap(~state) +
  geom_line(data = covid_br_all, color = "black")

