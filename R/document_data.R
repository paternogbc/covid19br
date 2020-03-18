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
#' You can find instructions on how to contribute to \bold{teads} at
#' this link: \url{https://github.com/paternogbc/covid19br}
#'
#' @details
#'
#' This package is build to keep an updated repository with the oficial data on corona virus for Brasil.
#' The source of data source is: Ministério da Saúde (https://saude.gov.br/).
#' @docType package
NULL

#' Corona virus cases for Brasil.
#'
#' @format A data frame with six variables:
#' \itemize{
#' \item{\strong{date}} {The date (yyyy-mm-dd)}
#' \item{\strong{state}} {The name of the state}
#' \item{\strong{state_ID}} {the code of the state}
#' \item{\strong{suspected_cases}} {The official number of suspected cases on a given date}
#' \item{\strong{confirmed_cases}} {The official number of confirmed cases on a given date}
#' \item{\strong{not_confirmed_cases}} {The official number of discarded cases on a given date}
#' \item{\strong{deaths}} {The official number of deaths by covid-19}
#' }
#'
#' @source
#' Data gathered from:
#' \url{https://saude.gov.br/}
#'
"covid_br_all"

#' Corona virus cases for each brazilian state.
#'
#' @format A data frame with six variables:
#' \itemize{
#' \item{\strong{date}} {The date (yyyy-mm-dd)}
#' \item{\strong{state}} {The name of the state}
#' \item{\strong{state_ID}} {the code of the state}
#' \item{\strong{suspected_cases}} {The official number of suspected cases on a given date}
#' \item{\strong{confirmed_cases}} {The official number of confirmed cases on a given date}
#' \item{\strong{not_confirmed_cases}} {The official number of discarded cases on a given date}
#' \item{\strong{deaths}} {The official number of deaths by covid-19}

#' }
#'
#' @source
#' Data gathered from:
#' \url{https://saude.gov.br/}
#'
"covid_br_states"

#' Brazilian map with states
#'
#' @format Simple feature collection with 27 features and 5 fieldS

#' @source
#' generated with
#' library(geobr)
#' states <- read_state(year=2018)
#'
"states"
