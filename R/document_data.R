#' @importFrom tibble tibble
NULL

#' Corona virus (covid-19) in Brasil.
#'
#' Updated data on the number of cases of corona virus in Brasil.
#' @name covid10br-package
#' @author Gustavo Brant Paterno
#' @section Bug reports:
#'
#' \url{https://github.com/paternogbc/covid19br/issues}.
#' @section How to contribute?:
#'
#' You can find instructions on how to contribute to \bold{covid19br} at
#' this link: \url{https://github.com/paternogbc/covid19br}
#'
#' @details
#'
#' This package is build to keep an updated repository with the oficial data on corona virus for Brasil.
#' The source of data source is: Ministério da Saúde (https://saude.gov.br/).
#'
#' In this package I use the r-package `coronabr` to download the raw data from Ministério da Saúde (see reference bewlo).
#'
#' @references
#' Sara Mortara and Andrea Sánchez-Tapia (2020). coronabr: Download de dados do coronavírus. R package version 0.1.0.
#' @docType package
NULL

#' Historical number of covid-19 cases for Brazil.
#'
#' @format A data frame with nine variables:
#' \itemize{
#' \item{\strong{region}} {The region of Brazil}
#' \item{\strong{state}} {The name of the state}
#' \item{\strong{state_ID}} {the code of the state}
#' \item{\strong{state_uid}} {the uid code of the state}
#' \item{\strong{suspected_cases}} {The official number of suspected cases on a given date}
#' \item{\strong{confirmed_cases}} {The official number of confirmed cases on a given date}
#' \item{\strong{not_confirmed_cases}} {The official number of discarded cases on a given date}
#' \item{\strong{deaths}} {The official number of deaths by covid-19}
#' \item{\strong{date}} {The date (yyyy-mm-dd)}
#' }
#'
#' @source
#' Data downloaded from: \url{http://plataforma.saude.gov.br/novocoronavirus/} with the
#' package `coronabr`: \url{https://github.com/liibre/coronabr}.
#'
"covid_br"

#' Historical number of covid-19 cases for states in Brazil.
#'
#' @format A data frame with nine variables:
#' \itemize{
#' \item{\strong{region}} {The region of Brazil}
#' \item{\strong{state}} {The name of the state}
#' \item{\strong{state_ID}} {the code of the state}
#' \item{\strong{state_uid}} {the uid code of the state}
#' \item{\strong{suspected_cases}} {The official number of suspected cases on a given date}
#' \item{\strong{confirmed_cases}} {The official number of confirmed cases on a given date}
#' \item{\strong{not_confirmed_cases}} {The official number of discarded cases on a given date}
#' \item{\strong{deaths}} {The official number of deaths by covid-19}
#' \item{\strong{date}} {The date (yyyy-mm-dd)}
#' }
#'
#' @source
#' Data downloaded from: \url{http://plataforma.saude.gov.br/novocoronavirus/} with the
#' package `coronabr`: \url{https://github.com/liibre/coronabr}.
"covid_states"

#' Historical number of covid-19 cases for regions in Brazil.
#'
#' @format A data frame with nine variables:
#' \itemize{
#' \item{\strong{region}} {The region of Brazil}
#' \item{\strong{state}} {The name of the state}
#' \item{\strong{state_ID}} {the code of the state}
#' \item{\strong{state_uid}} {the uid code of the state}
#' \item{\strong{suspected_cases}} {The official number of suspected cases on a given date}
#' \item{\strong{confirmed_cases}} {The official number of confirmed cases on a given date}
#' \item{\strong{not_confirmed_cases}} {The official number of discarded cases on a given date}
#' \item{\strong{deaths}} {The official number of deaths by covid-19}
#' \item{\strong{date}} {The date (yyyy-mm-dd)}
#' }
#'
#' @source
#' Data downloaded from: \url{http://plataforma.saude.gov.br/novocoronavirus/} with the
#' package `coronabr`: \url{https://github.com/liibre/coronabr}.
"covid_regions"

#' Brazilian map with states
#'
#' @format Simple feature collection with 27 features and 5 fieldS
#' @source
#' generated with
#' library(geobr)
#' states <- read_state(year=2018)
#'
"map_states"

#' Brazilian map with regions
#'
#' @format Simple feature collection with 27 features and 5 fieldS
#' @source
#' generated with
#' library(geobr)
#' map_regions <- read_region(year=2018)
#'
"map_regions"

#' Demographic information for Brazilian states
#'
#' @format A data frame with four variables:
#' \itemize{
#' \item{\strong{date}} {The date (yyyy-mm-dd)}
#' \item{\strong{state}} {The name of the state}
#' \item{\strong{pop}} {State population}
#' \item{\strong{area}} {State area in km^2}
#' \item{\strong{density}} {State density in people per km2}
#' }
"info_states"

#' Historical number of covid-19 cases for the world.
#'
#' @format A data frame with four variables:
#' \itemize{
#' \item{\strong{state}} {The name of the state (country)}
#' \item{\strong{pop}} {Total number of confirmed covid-19 cases}
#' \item{\strong{pop}} {Total number of confirmed covid-19 deaths}
#' \item{\strong{date}} {The date (yyyy-mm-dd)}
#' }
"covid_global"
