#' Reads data from LI-6800 file and organizes it into class licor.
#'
#' @inheritParams read.csv
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

  stop("Reading excel files exported from LI-6800 is not supported yet. Use raw files.")

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

  # Read in header information ----
  # header <- utils::read.csv(
  #   file = file,
  #   header = TRUE,
  #   sep = "\t",
  #   skip = 1L + grep(
  #     pattern = "\\[Data\\]",
  #     x = raw_lines,
  #     value = FALSE
  #   ),
  #   nrows = 1L
  # )

  # Read in and format units ----
  unit_vector <- unlist(stringr::str_split(raw_lines[types_line + 2L], pattern = "\t"))[cols_to_keep]
  unit_vector <- unit_vector %>%
    gsub("⁻([¹,²,³,⁴,⁵,⁶,⁷,⁸,⁹]*)", "^-\\1)", x = .) %>%
    chartr("¹²³⁴⁵⁶⁷⁸⁹", "123456789", x = .) %>%
    gsub(" ", " * (", x = .) %>%
    gsub("^(?=.*\\))((?!.*\\())", "\\(\\1", x = ., perl = TRUE)

  # Read in remarks ----

  # Read in data information ----
  # NEED TO INCLUDE DECIMAL ARGUMENT?
  data <- readr::read_tsv(raw_lines, col_names = FALSE, skip = types_line + 2L)
  data <- data[, cols_to_keep]

  # Apply units to the data
  for (i in 1:ncol(data)) {
    if (!is.na(unit_vector[i])) {
      units(data[,i]) <- unit_vector[i]
    }
  }

  #Add header to data
  colnames(data) <- colnames(header)

  #add data type/source to the columns
  attr(attributes(data)$names, "data_type") <- types

  #Create the class
  licor_data <- structure(data, class = c("licor", "data.frame"))

  #Load in the external data into the class
  external <- read.csv(file = file, header = TRUE, sep = "\n", nrows = 50)
  external <- as.list(unlist(external))
  temp <- str_extract(external, ".*(?=\\t)")
  external <- gsub(".*\\t", "", external, perl = TRUE)
  attr(external, "names") <- as.list(temp)
  external <- as.list(unlist(external))

  attr(licor_data, "header_data") <- external


  #Fix unitless data
  for (i in 1:ncol(licor_data)) {
    if (!subset_logic(licor_data, c("Sys", "UserDefVar"))[i]) {
      if (is.na(fixed[i]) & (class(licor_data[,i]) == "numeric" |
                             class(licor_data[,i]) == "integer")) {
        units(licor_data[,i]) <- units::unitless
      }
    } else if (is.na(fixed[i]) & (class(licor_data[,i]) == "numeric" |
                                  class(licor_data[,i]) == "integer")) {
      licor_data[,i] <- as.character(data[,i])
    }
  }

  #Return the class
  return(licor_data)
}

#' Constructor for class licor.
#'
#' @param file The name of the file to read from
#' @param deci Whether to set the decimal as a "." or a ","
#'
#' @return Object of class licor
#' @importFrom utils read.csv
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
#' @importFrom utils read.csv
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
  if (!all(test_unit[test_unit != "character" & test_unit != "logical"] == "units")) {
    stop(
      "Data values do not have units!",
      call. = FALSE
    )
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
#' @importFrom utils read.csv
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
  validate_licor(new_licor(file, deci))
}
