
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

# `covid19br`

The goal of `covid19br` is to provided updated and historical data on
the number of cases of corona virus for Brasil.

The package will be updated every two days including new data from
[Ministério da Saúde](https://saude.gov.br/).

## Current trend

An updated summary of the number of confirmed covid-19 cases in Brazil
is presented
[here](https://paternogbc.github.io/covid19br/articles/current_trends.html).

> A versão em portugês desta análise se encontra
> [aqui](https://paternogbc.github.io/covid19br/articles/tendencia_atual.html).

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
head(covid_br_all)
#> # A tibble: 6 x 7
#>   date       state state_ID suspected_cases confirmed_cases not_confirmed_c…
#>   <date>     <chr> <chr>              <dbl>           <dbl>            <dbl>
#> 1 2020-02-25 Braz… BR                     0               0                0
#> 2 2020-02-26 Braz… BR                     0               1                0
#> 3 2020-03-04 Braz… BR                     0               3                0
#> 4 2020-03-05 Braz… BR                     0              14                0
#> 5 2020-03-10 Braz… BR                   893              34              770
#> 6 2020-03-11 Braz… BR                   907              52              935
#> # … with 1 more variable: deaths <dbl>

# TO get historical data by state:
head(covid_br_states)
#> # A tibble: 6 x 7
#>   state state_ID suspected_cases confirmed_cases not_confirmed_c… date      
#>   <chr> <chr>              <dbl>           <dbl>            <dbl> <date>    
#> 1 Acre  AC                     3               0                0 2020-03-15
#> 2 Alag… AL                    14               1               21 2020-03-15
#> 3 Amapá AP                     1               0                0 2020-03-15
#> 4 Amaz… AM                     0               1                7 2020-03-15
#> 5 Bahia BA                    65               2               36 2020-03-15
#> 6 Ceará CE                    22               0               59 2020-03-15
#> # … with 1 more variable: deaths <dbl>
```

Please note that the ‘covid19br’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
