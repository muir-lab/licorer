#' Reading in LiCor files
#'
#' @param x A file name for a licor data file
#' @param deci Whether to set the decimal as a "." or a ","
#'
#' @return Returns a dataframe from raw LiCor files. Current support
#' for LiCor 6800 files only. LiCor 6400 file reading will be supported
#' in a later version.
#' @importFrom utils read.csv
#' @export
#'
#' @examples \donttest{
#'
#' }
#' @rdname read_licors
#' @export

read_li6800 <- function(x, deci = ".") {
  #Read in header information
  header <- read.csv(file = x, header = TRUE, sep = "\t",
                     skip = grep(pattern = "\\[Data\\]",
                                      x = readLines(x),
                                  value = FALSE) + 1,
                     nrows = 1)
  #Read in data information
  data <- read.csv(file = x, header = FALSE, sep = "\t",
                   skip = grep(pattern = "\\[Data\\]",
                                     x = readLines(x),
                                  value = FALSE) + 3, dec = deci)

  #Add header to data
  colnames(data) <- colnames(header)
  #Return data
  return(data)
}


#' Reads Data from raw LiCor files and organizes into class licor.
#'
#' @param filename The name of the file to read from
#' @param deci Whether to set the decimal as a "." or a ","
#'
#' @return Returns an object of class licor from raw LiCor files. Current support
#' for LiCor 6800 files only. LiCor 6400 file reading will be supported
#' in a later version.
#' @importFrom utils read.csv
#' @export
#'
#' @examples \donttest{
#' read_li6800_raw(system.file("extdata", "2019-05-06-0740_trillium_ovatum", package = "licorer", mustWork = TRUE))
#' read_li6800_raw("/path/filename")
#' }
#' @rdname read_li6800_raw
#' @export

read_li6800_raw <- function(filename, deci = ".") {
  #read in types markers
  types <- read.csv(file = filename, header = FALSE, sep = "\t",
                     skip = grep(pattern = "\\[Data\\]",
                                 x = readLines(filename),
                                 value = FALSE),
                     nrows = 1)
  types <- unitarray <- as.vector(unlist(types))

  #Read in header information
  header <- read.csv(file = filename, header = TRUE, sep = "\t",
                     skip = grep(pattern = "\\[Data\\]",
                                 x = readLines(filename),
                                 value = FALSE) + 1,
                     nrows = 1)
  #read in and format units
  read_units <- read.csv(file = filename, header = FALSE, sep = "\t",
                     skip = grep(pattern = "\\[Data\\]",
                                 x = readLines(filename),
                                 value = FALSE) + 2,
                     nrows = 1)
  unitarray <- as.vector(unlist(read_units))

  fixed <- gsub("⁻([¹,²,³,⁴,⁵,⁶,⁷,⁸,⁹]*)", "^-\\1)", unitarray)
  fixed <- chartr("¹²³⁴⁵⁶⁷⁸⁹", "123456789", fixed)
  fixed <- gsub(" ", " * (", fixed)
  fixed <- gsub("^(?=.*\\))((?!.*\\())", "\\(\\1", fixed, perl = TRUE)

  #Read in data information
  data <- read.csv(file = filename, header = FALSE, sep = "\t",
                   skip = grep(pattern = "\\[Data\\]",
                               x = readLines(filename),
                               value = FALSE) + 3, dec = deci)

  #apply units to the data
  for (i in 1:ncol(data)) {
    if (!is.na(fixed[i])) {
      units(data[,i]) <- fixed[i]
    }
  }

  #Add header to data
  colnames(data) <- colnames(header)

  #add data type/source to the columns
  attr(attributes(data)$names, "data_type") <- types

  #Create the class
  licor_data <- structure(data, class = c("licor", "data.frame"))

  #Load in the external data into the class
  external <- read.csv(file = filename, header = TRUE, sep = "\n", nrows = 50)
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
        units(licor_data[,i]) <- unitless
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
#' @param filename The name of the file to read from
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

new_licor <- function(filename, deci = ".") {
  read_li6800_raw(filename, deci)
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
#' @param filename The name of the licor raw file to read.
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

licor <- function(filename, deci = ".") {
  validate_licor(new_licor(filename, deci))
}
