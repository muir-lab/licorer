#' Reads data from LI-6800 file and organizes it into class licor.
#'
#' @param file The name of the file to read from
#' @param dec Whether to set the decimal as a "." or a ","
#'
#' @return Returns a dataframe from raw LiCor files. Current support
#' for LiCor 6800 files only. LiCor 6400 file reading will be supported
#' in a later version.
#'
#' @examples \dontrun{
#' read_li6800_raw(system.file("extdata", "2020-06-23_ECT_hib",
#'                             package = "licorer", mustWork = TRUE))
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
#' @rdname read_li6800_excel
#'
#' @export
read_li6800_excel <- function(file, dec = ".") {
  #names <- as.vector(readxl::read_excel(file, sheet = "Measurements",
  #                                      range = readxl::cell_rows(15),
  #                                      col_names = FALSE))
  #data <- readxl::read_excel(file, sheet = "Measurements",
  #                           range = readxl::cell_limits(c(17, 1), c(NA, NA)),
  #                           col_names = FALSE)
  #colnames(data) <- names
  #data
  print("licorer does not currently read excel files. This might change in future releases. Use the raw file instead.")
}


#' Reads data from raw LI-6800 files and organizes into class licor.
#'
#' @inheritParams read_li6800
#'
#' @return Returns an object of class licor from raw LI-6800 files. Current
#' support for LI-6800 files only. LI-6400 file reading will be supported
#' in a later version.
#'
#' @rdname read_li6800_raw
#'
#' @export

read_li6800_raw <- function(file, dec = ".") {

  fileprep(file)

  raw_lines <- readLines(file, encoding = "UTF-8")

  # Read in types markers ----
  types_line <- 1L + grep(pattern = "\\[Data\\]", x = raw_lines, value = FALSE)
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
    stringr::str_replace_all("\u207b([\u00b9,\u00b2,\u00b3,\u2074,\u2075,\u2076,\u2077,\u2078,\u2079]*)", "^-\\1") %>%
    chartr("\u00b9\u00b2\u00b3\u2074\u2075\u2076\u2077\u2078\u2079", "123456789", x = .) %>%
    stringr::str_replace_all(" ", " * ")

  # Read in remarks ----
  data_lines <- raw_lines[(types_line + 3L):length(raw_lines)]
  remark_lines <- data_lines[purrr::map_lgl(data_lines, is_remark)]
  if (length(remark_lines) != 0) {
    remarks <- readr::read_tsv(remark_lines, col_names = FALSE)
  }

  # Read in data information ----
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

  dupe_name <-  paste(dupe_name, modifier, sep = "_")

  attr(licor_data, "names")[duplicated(names(licor_data)) |
                             duplicated(names(licor_data), fromLast = TRUE)] <- dupe_name

  # Fix missing time values
  rep <- c(grep("hhmmss", colnames(licor_data), value = TRUE))
  temp <- vector("logical", length(rep))
  for (i in 1:length(rep)) {
    if (all(licor_data[rep[i]] != "--:--:--")) {
      temp[i] <- FALSE
    } else {
      temp[i] <- TRUE
    }
  }

  licor_data[rep[temp]] <- hms::parse_hms("--:--:--")

  # Return the class
  return(licor_data)

}

#' Constructor for class licor.
#'
#' @param file The name of the file to read from
#' @param dec Whether to set the decimal as a "." or a ","
#'
#' @return Object of class licor
#' @export
#'
#' @examples
#' new_licor(system.file("extdata", "2019-05-06-0740_trillium_ovatum",
#'                       package = "licorer", mustWork = TRUE))
#' @examples \dontrun{
#' new_licor("/path/filename")
#' }
#'
#' @rdname new_licor
#' @export

new_licor <- function(file, dec = ".") {
  read_li6800_raw(file, dec)
}

#' Validator for class licor.
#'
#' @param x x
#'
#' @return x
#' @export
#'
#' @examples \dontrun{
#' validate_licor(licor_object)
#' }
#' @rdname validate_licor
#' @export

validate_licor <- function (x) {
  values <- unclass(x)
  test_unit <- vector(length = length(values))
  for (i in 1:length(values)) {
    suppressWarnings(test_unit[i] <- class(values[[i]]))
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
  unit_types <- c()
  for (i in 1:length(values)) {
    if(test_unit[i] == "units") {
      unit_types[i] <- units::deparse_unit(values[[i]])
    } else {
      unit_types[i] <- NA
    }
  }
  names(unit_types) <- names(values)

  ## Produce errors for wrong values
  err <- c()
  for (y in 1:length(values)) {
    if ((attr(attributes(values)$names, "data_type")[y] != "UserDefCon" &
         attr(attributes(values)$names, "data_type")[y] != "UserDefVar") &
        !is.na(unit_types[y])) {
      tryCatch({
        units::set_units(values[[y]],
                  units::as_units(acceptable_units()[attributes(values)$names[y]]),
                  mode = "standard")
      }, error = function(e) {
          err <- c(err, cat("Error: expected type for: \"", attributes(values)$names[y],
                            "\" should be: \"", acceptable_units()[attributes(values)$names[y]],
                            "\" but got: \"", unit_types[y], "\"\n"), sep = "")
          cat("R lookup tabes somtimes do not produce correct resuts. If: \"",
              attributes(values)$names[y],
                "\" does not match \n the above vatiable, it is not in the lookup table.\n")
      })
    } else {
        if ((attr(attributes(values)$names, "data_type")[y] != "UserDefCon" &
             attr(attributes(values)$names, "data_type")[y] != "UserDefVar") &
            test_unit[y] != acceptable_nonunits()[attributes(values)$names[y]] ) {
          err <- c(err, cat("Error: expected class for: \"", attributes(values)$names[y],
                            "\" should be: \"", acceptable_nonunits()[attributes(values)$names[y]],
                            "\" but got: \"", test_unit[y], "\"\n"), sep = "")
        }
    }
  }
  if (length(err) >= 1) {
    stop(err)
  }



  #ensure header is correct
  head_attrib <- attributes(values)$header
  if (class(head_attrib) != "list" |
      suppressWarnings(
        sum(attributes(attributes(values)$header)$names != acceptable_header()) <
            length(acceptable_header()) - 13)) {
    stop(
      "Header attributes missing!",
      call. = FALSE
    )
  }

  #ensure data columns have attribute
  if (length(attr(attributes(values)$names, "data_type")) != length(attributes(values)$names)) {
    stop(
      "One or more columns is missing a category assignment!",
      call. = FALSE
    )
  }
  invisible(x)
}

#' Helper for class licor. Creates licor class objects.
#'
#' @param file The name of the licor raw file to read.
#' @param dec Wheter the decimal is "." or ","
#'
#' @return Returns an object of class licor, checked for correctness. Supports
#' 6800 files currently. Correct licor objects have units on their variables
#' and an attribute containg the data from the header of the file.
#' @export
#'
#' @examples
#' licor(system.file("extdata", "2019-05-06-0740_trillium_ovatum",
#'                   package = "licorer", mustWork = TRUE))
#' @examples \dontrun{
#' licor("/path/filename")
#' }
#' @rdname licor
#' @export

licor <- function(file, dec = ".") {
  retvalue <- NULL
  if (length(file) == 1) {
    retvalue <- suppressWarnings(validate_licor(new_licor(file, dec)))
  } else {
    templist <- vector("list", length = length(file))
    for (i in 1:length(file)) {
      templist[[i]] <- suppressWarnings(validate_licor(new_licor(file[i], dec)))
    }
    retvalue <- combine_licor(templist)
  }
  return(retvalue)
}

#' A preparation funtion to specially format files in windows
#' For use only in windows macines, automatically called when reading in licor
#' files.
#'
#' @param file The name of the licor raw file to read.
#'
#' @return Nothing is returned, but the file is modified.
#' @export
#'
#' @rdname fileprep
#' @export

fileprep <- function(file) {

  if (.Platform$OS.type == "windows") {
    arg <- paste("((Get-Content",
               file,
               "-Encoding UTF8) -replace [char]916, '(delta)') | Set-Content",
               file,
               "-Encoding UTF8", sep = " ")
    system2("powershell", args = arg, wait = TRUE)
  } else {
    arg <- c("-i", "''", "'s/'`printf '\xCE\x94'`'/(delta)/g'", file)
    system2("sed", args = arg, wait = TRUE)
  }
}
