#' Gets the lines with types for each variable exported from the LI-6800
#'
#' @param raw_lines Character. Vector of raw lines from LI-6800 file.
#'
#' @return An integer indexing which line in raw_lines contains the variable
#' types.
#'

get_li6800_types_line = function(raw_lines) {

  types_line = 1L + grep(pattern = "\\[Data\\]", x = raw_lines, value = FALSE)
  checkmate::assert_integer(types_line, len = 1L)
  return(types_line)

}

#' Gets the type for each variable exported from the LI-6800
#'
#' @inheritParams get_li6800_types_line
#'
#' @param types_line Integer. Index of which line in raw_lines contains the variable
#' types.
#'
#' @return A character vector of types for each variable. The index attribute
#' is the column number.
#'

get_li6800_types = function(raw_lines, types_line) {

  types = unlist(stringr::str_split(raw_lines[types_line], pattern = "\t"))

  # Drop columns without a type
  cols_to_drop = nchar(types) == 0
  if (any(cols_to_drop) > 0) {
    message(paste("Column(s)", which(cols_to_drop), "appear to be empty. Dropping."))
    cols_to_keep = seq_len(length(types))[!cols_to_drop]
    types = types[cols_to_keep]
  } else {
    cols_to_keep = seq_len(length(types))
  }

  attr(types, "index") = cols_to_keep
  return(types)

}
