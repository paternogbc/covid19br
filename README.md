
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

# `covid19br`

The goal of `covid19br` is to provide a permanent repository with data
and the entire history of corona virus cases in Brazil.

The package will be updated daily, including new data from the Ministry
of Health(<https://saude.gov.br/>) made available through the platform
[IVIS](http://platform.saude.gov.br/novocoronavirus/).

See the package page for
[reference](https://paternogbc.github.io/covid19br/index.html).

## Current trend

An updated summary of the number of confirmed covid-19 cases in Brazil
is presented
[here](https://paternogbc.github.io/covid19br/articles/en_current_trends.html).

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

``` r
library(covid19br)

# To get historical data for Brazil: 
head(covid_br)
#> # A tibble: 6 x 9
#>   region state state_ID state_uid suspected_cases confirmed_cases
#>   <lgl>  <chr> <chr>    <lgl>               <dbl>           <dbl>
#> 1 NA     Braz… BR       NA                     20               1
#> 2 NA     Braz… BR       NA                    132               1
#> 3 NA     Braz… BR       NA                    182               1
#> 4 NA     Braz… BR       NA                    207               2
#> 5 NA     Braz… BR       NA                    252               2
#> 6 NA     Braz… BR       NA                    433               2
#> # … with 3 more variables: not_confirmed_cases <dbl>, deaths <dbl>, date <date>

# TO get historical data by state:
head(covid_states)
#> # A tibble: 6 x 9
#>   region state state_ID state_uid suspected_cases confirmed_cases
#>   <chr>  <fct> <fct>    <fct>               <dbl>           <dbl>
#> 1 Norde… Ceará CE       23                      0               0
#> 2 Norde… Para… PB       25                      1               0
#> 3 Norde… Pern… PE       26                      1               0
#> 4 Norde… Bahia BA       29                      0               0
#> 5 Sudes… Mina… MG       31                      2               0
#> 6 Sudes… Espí… ES       32                      1               0
#> # … with 3 more variables: not_confirmed_cases <dbl>, deaths <dbl>, date <date>

# TO get historical data by region:
head(covid_regions)
#> # A tibble: 6 x 9
#>   region state state_ID state_uid suspected_cases confirmed_cases
#>   <chr>  <lgl> <lgl>    <lgl>               <dbl>           <dbl>
#> 1 Centr… NA    NA       NA                      0               0
#> 2 Norde… NA    NA       NA                      2               0
#> 3 Sudes… NA    NA       NA                     16               1
#> 4 Sul    NA    NA       NA                      2               0
#> 5 Centr… NA    NA       NA                     10               0
#> 6 Norde… NA    NA       NA                     15               0
#> # … with 3 more variables: not_confirmed_cases <dbl>, deaths <dbl>, date <date>
```

## Raw data

  - The raw data are downloaded via the package
    [`coronabr`](https://github.com/liibre/coronabr)\[1\] which provides
    an excellent function to download the raw data directly from the
    platform [IVIS](http://platform.saude.gov.br/novocoronavirus/) of
    the Ministry of Health.

  - Data on the global number of cases were downloaded from [Our World
    in Data](https://ourworldindata.org/coronavirus-source-data).

-----

Please note that the ‘covid19br’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.

1.  Package developed by [Andrea](https://twitter.com/SanchezTapiaA) and
    [Sara](https://twitter.com/mortarasara)
