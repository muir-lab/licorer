#' Applies the units for each variable exported from the LI-6800
#'
#' @param .x data.frame. Raw data without units.
#' @param unit_vector Character. A vector of character values that can be
#' converted to valid scientific units. The vector should be in the same order
#' as variables in the data.
#'
#' @return The data.frame .x with units applied via unit_vector.
#'

apply_li6800_units = function(.x, unit_vector) {

  for (i in seq_len(ncol(.x))) {

    if (nchar(unit_vector[i]) > 0 & is.numeric(.x[, i])) {

      # Check if valid units are provided
      .y = try(units::as_units(unit_vector[i]), silent = TRUE)

      if (inherits(.y, c("symbolic_units", "units"))) {
        units(.x[, i]) = unit_vector[i]
      } else {
        warning(paste0("Column ", i, " contained invalid units '", unit_vector[i], "'. These units are ignored. Check the output."))
      }
    }
  }

  return(.x)

}

#' Gets the units for each variable exported from the LI-6800
#'
#' @inheritParams get_li6800_types_line
#' @inheritParams get_li6800_types
#' @param which Integer. Vector of variable column indexes.
#'
#' @return A character vector of types for each variable. The index attribute
#' is the column number.
#'

get_li6800_units = function(raw_lines, types_line, which) {

  checkmate::assert_integer(which, lower = 1L, any.missing = FALSE,
                            min.len = 1L, unique = TRUE)

  unit_vector = raw_lines[types_line + 2L] |>
    stringr::str_split(pattern = "\t") |>
    unlist() |>
    magrittr::extract(cols_to_keep)

  unit_vector = unit_vector |>
    stringr::str_trim(side = "both") |>
    stringr::str_replace_all("\u207b([\u00b9,\u00b2,\u00b3,\u2074,\u2075,\u2076,\u2077,\u2078,\u2079]*)", "^-\\1") |>
    (function(.x) {
      chartr("\u00b9\u00b2\u00b3\u2074\u2075\u2076\u2077\u2078\u2079",
             "123456789", x = .x)
    })() |>
    stringr::str_replace_all(" ", " * ")

  # unit_vector |>
    # purrr::map(try, expr = units::as_units)

  return(unit_vector)

}
