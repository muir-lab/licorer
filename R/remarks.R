#' Gets the remarks from an LI-6800 file
#'
#' @inheritParams get_li6800_types_line
#'
#' @return A tibble of remarks with three columns named "row", "time", and "remark".
#'

get_li6800_remarks = function(raw_lines) {

  purrr::imap_dfr(
    raw_lines, function(.x, .y) {
      .s = stringr::str_extract(.x, pattern = "^[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}\\t.*")
      tibble::tibble(row = .y, value = .s)
    }) |>
    dplyr::filter(
      !is.na(value),
      !stringr::str_detect(value, "\\t.*\\t")
    ) |>
    tidyr::separate(value, c("time", "remark"), sep = "\\t")

}
