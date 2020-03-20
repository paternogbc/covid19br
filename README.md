---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->
[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->



# `covid19br` 

The goal of `covid19br` is to provide a permanent repository with data and the entire history of corona virus cases in Brazil.

The package will be updated daily, including new data from the Ministry of Health(https://saude.gov.br/) made available through the platform [IVIS](http://platform.saude.gov.br/novocoronavirus/).

See the package page for [reference](https://paternogbc.github.io/covid19br/index.html).

## Current trend 

An updated summary of the number of confirmed covid-19 cases in Brazil is presented [here](https://paternogbc.github.io/covid19br/articles/en_current_trends.html).

## Installation

You can install the development version of covid19br from github with:

``` r
install.packages("devtools") 
devtools::install_github(repo = "paternogbc/covid19br")
```

## Help

In `R`, documentation for `covid19br` dataset can be accessed with the
standard `help` command (e.g., `?covid_br_all` and `?covid_br_states`).

For a online description of the dataset, see [reference
page](https://paternogbc.github.io/covid19br/reference/index.html)

## Load the package data


```r
library(covid19br)

# To get historical data for Brazil: 
head(covid_br)
#> # A tibble: 6 x 9
#>   region state state_ID state_uid suspected_cases confirmed_cases not_confirmed_c… deaths
#>   <lgl>  <chr> <chr>    <lgl>               <dbl>           <dbl>            <dbl>  <dbl>
#> 1 NA     Braz… BR       NA                     20               1               59      0
#> 2 NA     Braz… BR       NA                    132               1               60      0
#> 3 NA     Braz… BR       NA                    182               1               71      0
#> 4 NA     Braz… BR       NA                    207               2               79      0
#> 5 NA     Braz… BR       NA                    252               2               89      0
#> 6 NA     Braz… BR       NA                    433               2              162      0
#> # … with 1 more variable: date <date>

# TO get historical data by state:
head(covid_states)
#> # A tibble: 6 x 9
#>   region state state_ID state_uid suspected_cases confirmed_cases not_confirmed_c… deaths
#>   <chr>  <fct> <fct>    <fct>               <dbl>           <dbl>            <dbl>  <dbl>
#> 1 Norde… Ceará CE       23                      0               0                1      0
#> 2 Norde… Para… PB       25                      1               0                0      0
#> 3 Norde… Pern… PE       26                      1               0                0      0
#> 4 Norde… Bahia BA       29                      0               0                2      0
#> 5 Sudes… Mina… MG       31                      2               0                2      0
#> 6 Sudes… Espí… ES       32                      1               0                0      0
#> # … with 1 more variable: date <date>

# TO get historical data by region:
head(covid_regions)
#> # A tibble: 6 x 9
#> # Groups:   date [2]
#>   region state state_ID state_uid suspected_cases confirmed_cases not_confirmed_c… deaths
#>   <chr>  <lgl> <lgl>    <lgl>               <dbl>           <dbl>            <dbl>  <dbl>
#> 1 Centr… NA    NA       NA                      0               0                1      0
#> 2 Norde… NA    NA       NA                      2               0                3      0
#> 3 Sudes… NA    NA       NA                     16               1               38      0
#> 4 Sul    NA    NA       NA                      2               0               17      0
#> 5 Centr… NA    NA       NA                     10               0                1      0
#> 6 Norde… NA    NA       NA                     15               0                3      0
#> # … with 1 more variable: date <date>
```

## Raw data

The raw data are downloaded via the package [`coronabr`](https://github.com/paternogbc/coronabr)^[Package developed by [Andrea](https://twitter.com/SanchezTapiaA) and [Sara](https://twitter.com/mortarasara)] which provides an excellent function to download the raw data directly from the platform [IVIS](http://platform.saude.gov.br/novocoronavirus/) of the Ministry of Health.

***

Please note that the 'covid19br' project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.
