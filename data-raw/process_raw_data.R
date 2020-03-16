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

# calculate doubling time:
mod10   <- lm(log10(confirmed_cases + 1) ~ date, covid_br_all)
modlog   <- lm(log(confirmed_cases + 1) ~ date, covid_br_all)
dtime <- log(2)/modlog$coef[2] # in days
dtime

# Plots------
# Curva de crescimento no Brasil
g1 <- ggplot(covid_br_all, aes(y = confirmed_cases, x = date)) +
  geom_area(fill = "tomato", alpha = 0.6) +
  geom_line(color = "black") +
  scale_x_date(date_breaks = "2 days", date_labels =  "%d %b") +
  geom_segment(aes(x = as.Date("2020-02-25"), y = 150, xend = as.Date ("2020-02-25"), yend = 5),
               arrow = arrow(type =  "closed", length = unit(0.3, "cm"))) +
  annotate(geom='text', x = as.Date("2020-02-25"), y = 160, label = "Primeiro caso confirmado (25 de fevereiro)", hjust =  0, size = 7) +
  theme_cowplot(font_size = 20) +
  labs(y = "Casos confirmados (covid-19)",
       x = "Data",
       title = "Coronavirus no Brasil",
       subtitle = "O número de casos cresce exponencialmente",
       caption = "Fonte: dados do Ministério da Saúde | atualizado: 15/03/2020");g1


# Tempo para dobrar o número de casos
g2 <- ggplot(covid_br_all, aes(y = confirmed_cases + 1, x = date)) +
  geom_point(color = "black", size = 4, shape = 21, fill = "tomato") +
  scale_y_continuous(trans = "log10") +
  geom_smooth(method = lm, color = "tomato") +
scale_x_date(date_breaks = "2 days", date_labels =  "%d %b") +
  theme_cowplot(font_size = 20) +
  labs(y = "Casos confirmados (covid-19) em escala log10",
       x = "Data",
       title = "Coronavirus no Brasil",
       subtitle = "A cada 9 dias o número de casos aumenta 10 vezes!",
       caption = "Fonte: dados do Ministério da Saúde | atualizado: 15/03/2020") +
  theme(title = element_text(size = 22));g2
