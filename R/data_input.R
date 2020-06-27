#' Reads data from LI-6800 file and organizes it into class licor.
#'
#'
#' @return Returns a dataframe from raw LiCor files. Current support
#' for LiCor 6800 files only. LiCor 6400 file reading will be supported
#' in a later version.
#'
#' @examples \donttest{
#' read_li6800_raw(system.file("extdata", "2019-05-06-0740_trillium_ovatum", package = "licorer", mustWork = TRUE))
#' read_li6800_raw("/path/filename")
#' }
#'
#' @rdname read_li6800
#'
#' @export

read_li6800 <- function(file, dec = ".") {

  # Check file exists
  checkmate::assert_file_exists(file)

  # Check delim argument
  dec <- match.arg(dec, c(".", ","))

  # Determine if x is raw or excel
  if (stringr::str_detect(file, ".xlsx$")) {
    licor_data <- read_li6800_excel(file, dec)
  } else {
    licor_data <- read_li6800_raw(file, dec)
  }

  #Return data
  return(licor_data)

}


#' Reads data from Excel LI-6800 files and organizes into class licor.
#'
#' @inheritParams read_li6800
#'
#' @rdname read_li6800
#'
#' @export
read_li6800_excel <- function(file, dec = ".") {
  names <- as.vector(readxl::read_excel(file, sheet = "Measurements",
                                        range = readxl::cell_rows(15),
                                        col_names = FALSE))
  data <- readxl::read_excel(file, sheet = "Measurements",
                             range = readxl::cell_limits(c(17, 1), c(NA, NA)),
                             col_names = FALSE)
  colnames(data) <- names
  data
}


#' Reads data from raw LI-6800 files and organizes into class licor.
#'
#' @inheritParams read_li6800
#'
#' @return Returns an object of class licor from raw LI-6800 files. Current
#' support for LI-6800 files only. LI-6400 file reading will be supported
#' in a later version.
#'
#' @rdname read_li6800
#'
#' @export

read_li6800_raw <- function(file, dec = ".") {

  raw_lines <- readLines(file)

  # Read in types markers ----
  types_line <- 1L + grep(pattern = "\\[Data\\]", x = raw_lines,
                          value = FALSE)
  checkmate::assert_integer(types_line, len = 1L)

  types <- unlist(stringr::str_split(raw_lines[types_line], pattern = "\t"))

  # Drop columns without a type
  cols_to_drop <- nchar(types) == 0
  if (any(cols_to_drop) > 0) {
    message(paste("Column(s)", which(cols_to_drop), "appear to be empty. Dropping."))
    cols_to_keep <- seq_len(length(types))[!cols_to_drop]
    types <- types[cols_to_keep]
  } else {
    cols_to_keep <- seq_len(length(types))
  }

  checkmate::assert_names(types, subset.of = acceptable_types())

  # Read in variable names ----
  var_names <- unlist(stringr::str_split(raw_lines[types_line + 1L],
                                         pattern = "\t"))[cols_to_keep]

  # Read in and format units ----
  unit_vector <- unlist(stringr::str_split(raw_lines[types_line + 2L],
                                           pattern = "\t"))[cols_to_keep]
  unit_vector <- unit_vector %>%
    stringr::str_trim(side = "both") %>%
    stringr::str_replace_all("⁻([¹,²,³,⁴,⁵,⁶,⁷,⁸,⁹]*)", "^-\\1") %>%
    chartr("¹²³⁴⁵⁶⁷⁸⁹", "123456789", x = .) %>%
    stringr::str_replace_all(" ", " * ")

  # Read in remarks ----
  data_lines <- raw_lines[(types_line + 3L):length(raw_lines)]
  remark_lines <- data_lines[purrr::map_lgl(data_lines, is_remark)]
  if (length(remark_lines) != 0) {
    remarks <- readr::read_tsv(remark_lines, col_names = FALSE)
  }

  # Read in data information ----
  # NEED TO INCLUDE DECIMAL ARGUMENT?
  if (length(remark_lines) != 0) {
    data_lines <- data_lines[!data_lines %in% remark_lines]
  }
  data <- readr::read_tsv(data_lines, col_names = FALSE)
  data <- data[, cols_to_keep]
  data <- as.data.frame(data)

  # Apply units to the data
  for (i in 1:ncol(data)) {
    if (nchar(unit_vector[i]) > 0) {
      units(data[,i]) <- unit_vector[i]
    }
  }

  # Add header to data
  colnames(data) <- var_names
  data <- tibble::tibble(data, .name_repair = "minimal")

  # Add data type/source to the columns
  attr(attributes(data)$names, "data_type") <- types

  # Add remarks if there are any
  if (exists("remarks")) {
    attr(data, "remarks") <- remarks
  }

  # Create the class
  licor_data <- structure(data, class = c("licor", "tbl_df", "tbl", "data.frame"))

  # Read in the external data into the class ----
  external <- readr::read_delim(raw_lines, delim = "\n",
                                n_max = types_line - 3L) %>%
    unlist() %>%
    as.list()

  temp <- stringr::str_extract(external, ".*(?=\\t)")
  external <- gsub(".*\\t", "", external, perl = TRUE)
  attr(external, "names") <- as.list(temp)
  external <- as.list(unlist(external))

  attr(licor_data, "header_data") <- external

  # Fix unitless data ----
  for (i in 1:ncol(licor_data)) {
    if (!subset_logic(licor_data, c("Sys", "UserDefVar"))[i]) {
      if (nchar(unit_vector[i]) == 0 &
          (is.numeric(licor_data[[i]]) |
           is.integer(licor_data[[i]]))) {
        units(licor_data[[i]]) <- units::unitless
      }
    } else if (nchar(unit_vector[i]) > 0 &
               (is.numeric(licor_data[[i]]) |
                is.integer(licor_data[[i]]))) {
      licor_data[,i] <- as.character(licor_data[[i]])
    }
  }

  # Fix Duplicate Names
  dupe_name <- names(licor_data[duplicated(names(licor_data)) |
             duplicated(names(licor_data), fromLast = TRUE)])

  modifier <- attr(attributes(licor_data)$names, "data_type")[duplicated(names(licor_data)) |
                                            duplicated(names(licor_data), fromLast = TRUE)]

  dupe_name <-  paste(dupe_name, type_mod, sep = "_")

  attr(licor_data, "names")[duplicated(names(licor_data)) |
                             duplicated(names(licor_data), fromLast = TRUE)] <- dupe_name
  # Return the class
  return(licor_data)

}

#' Constructor for class licor.
#'
#' @param file The name of the file to read from
#' @param deci Whether to set the decimal as a "." or a ","
#'
#' @return Object of class licor
#' @export
#'
#' @examples
#' new_licor(system.file("extdata", "2019-05-06-0740_trillium_ovatum", package = "licorer", mustWork = TRUE))
#' new_licor("/path/filename")
#'
#' @rdname new_licor
#' @export

new_licor <- function(file, deci = ".") {
  read_li6800_raw(file, deci)
}

#' Validator for class licor.
#'
#' @param x x
#'
#' @return x
#' @export
#'
#' @examples \donttest{
#' validate_licor(licor_object)
#' }
#' @rdname validate_licor
#' @export

validate_licor <- function (x) {
  values <- unclass(x)
  test_unit <- vector(length = length(values))
  for (i in 1:length(values)) {
    test_unit[i] <- class(values[[i]])
  }
  #increase strictness on units
  if (!all(test_unit[test_unit != "character" &
                     test_unit != "logical" &
                     test_unit != "numeric" &
                     test_unit != "hms" &
                     test_unit != "POSIXct"] == "units")) {
    stop(
      "Data values do not have units!",
      call. = FALSE
    )
  }

  #ensure units make sense for the variable.
  for (i in 1:length(values)) {
    if(test_unit[i] == "units") {
      unit_types[i] <- units::deparse_unit(values[[i]])
    } else {
      unit_types[i] <- NA
    }
  }
  names(unit_types) <- names(values)

  for (y in 1:length(unit_types)) {
    if(!is.na(unit_types[y])) {
      true[y] = unit_types[y] == acceptable_units()[names(unit_types)[y]]
      if (is.na(true[y])) {
        true[y] = unit_types[y] == ""
      }
    }
  }

  #ensure header is correct
  head_attrib <- attributes(values)$header
  if (class(head_attrib) != "list" | length(head_attrib) < 50) {
    stop(
      "Header attributes missing!",
      call. = FALSE
    )
  }
  #ensure data columns have attribute
  if (length(attr(attributes(fixed)$names, "data_type")) != length(attributes(fixed)$names)) {
    stop(
      "One or more columns is missing a category assignment!",
      call. = FALSE
    )
  }
  x
}

#' Helper for class licor. Creates licor class objects.
#'
#' @param file The name of the licor raw file to read.
#' @param deci Wheter the decimal is "." or ","
#'
#' @return Returns an object of class licor, checked for correctness. Supports
#' 6800 files currently. Correct licor objects have units on their variables
#' and an attribute containg the data from the header of the file.
#' @export
#'
#' @examples
#' licor(system.file("extdata", "2019-05-06-0740_trillium_ovatum", package = "licorer", mustWork = TRUE))
#' @examples \donttest{
#' licor("/path/filename")
#'}
#' @rdname licor
#' @export

licor <- function(file, deci = ".") {
  suppressWarnings(validate_licor(new_licor(file, deci)))
}
