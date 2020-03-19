
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
#>   date       suspected_cases confirmed_cases not_confirmed_c… deaths state
#>   <date>               <dbl>           <dbl>            <dbl>  <dbl> <chr>
#> 1 2020-02-26              20               1               59      0 Braz…
#> 2 2020-02-27             132               1               60      0 Braz…
#> 3 2020-02-28             182               1               71      0 Braz…
#> 4 2020-02-29             207               2               79      0 Braz…
#> 5 2020-03-01             252               2               89      0 Braz…
#> 6 2020-03-02             433               2              162      0 Braz…
#> # … with 1 more variable: state_ID <chr>

# TO get historical data by state:
head(covid_br_states)
#> # A tibble: 6 x 8
#>   state state_ID state_uid suspected_cases confirmed_cases not_confirmed_c…
#>   <fct> <fct>    <fct>               <dbl>           <dbl>            <dbl>
#> 1 Ceará CE       23                      0               0                1
#> 2 Para… PB       25                      1               0                0
#> 3 Pern… PE       26                      1               0                0
#> 4 Bahia BA       29                      0               0                2
#> 5 Mina… MG       31                      2               0                2
#> 6 Espí… ES       32                      1               0                0
#> # … with 2 more variables: deaths <dbl>, date <date>
```

## Raw data

The raw data are downloaded via the package
[`coronabr`](https://github.com/paternogbc/coronabr)\[1\] which provides
an excellent function to download the raw data directly from the
platform [IVIS](http://platform.saude.gov.br/novocoronavirus/) of the
Ministry of Health.

-----

Please note that the ‘covid19br’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.

1.  Package developed by [Andrea](https://twitter.com/SanchezTapiaA) and
    [Sara](https://twitter.com/mortarasara)
