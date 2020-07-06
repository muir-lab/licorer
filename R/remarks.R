# Functions for handling remarks
#'
#' @param .s A string to be checked for remarks
#'
#' Detect remarks in LI-6800 raw data
#'
#' @name is_remark
#' @title is_remark
#'
#' @export

is_remark <- function(.s) {

  checkmate::assert_string(.s)
  stringr::str_detect(.s, "^[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}\\t.*$")

}
