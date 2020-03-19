# Script to run before updating site
# Packages
library(covid19br)
library(tidyverse)
library(covid19br)
library(geobr)
library(cowplot)
library(knitr)
library(DT)

# re-generate datesets
source("data-raw/01_process_daily_ms_raw_data.R")
source("data-raw/02_process_states_info.R")
source("data-raw/load_brazilian_map.R")
source("data-raw/utils.R")

