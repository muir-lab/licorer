#' \code{licorer} package
#'
#' Read and process LI-COR photosynthesis data files in R
#'
#' See the README on
#' \href{https://github.com/muir-lab/licorer}{GitHub}
#'
#' @docType package
#' @name licorer
#' @importFrom magrittr %>% %<>%
#' @importFrom rlang .data
#' @importFrom units drop_units set_units
NULL

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c("."))

## quiets concerns of R CMD check re: units
utils::globalVariables(c("degreeC", "g", "hPa", "J", "K", "kg", "kJ", "kPa",
                         "m", "mol", "Pa", "PPFD", "s", "umol", "W"))
