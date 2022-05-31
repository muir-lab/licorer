#' Gets the remarks exported from the LI-6800
#'
#' @inheritParams get_li6800_types_line
#' @inheritParams get_li6800_types
#'
#' @return A data.frame of remarks with two columns, "time" and "remark".
#'

get_li6800_remarks = function(raw_lines, types_line) {

  purrr::map_chr(
    raw_lines,
    stringr::str_extract,
    pattern = "^[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}\\t.*"
  ) |>
    na.omit() |>
    tibble::as_tibble() |>
    dplyr::filter(!stringr::str_detect(value, "\\t.*\\t")) |>
    tidyr::separate(value, c("time", "remark"), sep = "\\t")

}

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

is_remark = function(.s) {

  checkmate::assert_string(.s)
  stringr::str_detect(.s, "^[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}\\t.*$")

}

# Functions for handling remarks
#'
#' @param .s A string to be checked for remarks
#'
#' Detect remarks in LI-6400 raw data
#'
#' @name is_remark_6400
#' @title is_remark_6400
#'
#' @export

is_remark_6400 = function(.s) {

  checkmate::assert_string(.s)
  stringr::str_detect(.s, "^\\\"[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.*\\\"$")

}
