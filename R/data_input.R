#' Reading in LiCor files
#'
#' @param x File name
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

read_li6800 <- function(x) {
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
                                  value = FALSE) + 3)

  #Add header to data
  colnames(data) <- colnames(header)
  #Return data
  return(data)
}


#'Reads in data from a licore raw data file
#'
read_li6800_raw <- function(filename) {
  #read in types markers
  types <- read.csv(file = filename, header = TRUE, sep = "\t",
                     skip = grep(pattern = "\\[Data\\]",
                                 x = readLines(filename),
                                 value = FALSE),
                     nrows = 1)

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

  fixed <- gsub("⁻¹", "^-1)", unitarray)
  fixed <- gsub("⁻²", "^-2)", fixed)
  fixed <- gsub(" ", " * (", fixed)
  fixed <- gsub("^(?=.*\\))((?!.*\\())", "\\(\\1", fixed, perl = TRUE)

  #Read in data information
  data <- read.csv(file = filename, header = FALSE, sep = "\t",
                   skip = grep(pattern = "\\[Data\\]",
                               x = readLines(filename),
                               value = FALSE) + 3)

  #apply units to the data
  for (i in 1:ncol(data)) {
    if (!is.na(fixed[i])) {
      units(data[,i]) <- fixed[i]
    }
  }

  #Add header to data
  colnames(data) <- colnames(header)


  #Return data
  return(data)
}
