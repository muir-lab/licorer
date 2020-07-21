#' Creating a subset of the data
#'
#' @param x A licor object
#' @param vec A vector of subset options, and can be any permutation of the
#' options presented by the '\code{\link{subset_options}}' function, for example, vec could
#' be 'c("Sys","GasEx")'
#'
#' @return Returns a data.frame with the subset of data specified
#' @seealso \code{\link{subset_options}}
#' @examples \dontrun{
#'   dataframe <- licor_subset(licor_data, c("Sys", GasEx"))
#' }
#' @rdname licor_subset
#' @export

licor_subset <- function(x, vec) {
  class(x) <- "data.frame"
  x[attr(attributes(x)$names, "data_type") == vec]
}


#' Creates a boolean logical vector
#'
#' @param x A licor object
#' @param vec A vector of subset options
#'
#' @return Returns a logical vector in order to subset/perform operations
#' on data without being destructive or duplicating unnecissarily.
#'
#' @examples \dontrun{
#'   logic_vector <- subset_logic(licor_data, c("Sys", GasEx"))
#' }
#' @rdname subset_logic
#' @export

subset_logic <- function(x, vec) {
  attr(attributes(x)$names, "data_type") == vec
}


#' Outputs options for subsetting
#'
#' @param x A licor object
#'
#' @return Returns a vector of strings that can be used to subset the data
#' using the subset function.
#'
#' @examples \dontrun{
#'    subset_options()
#' }
#' @rdname subset_options
#'
#' @export

subset_options <- function(x) {
  unique(attr(attributes(x)$names, "data_type"))
}

#' Gets remarks attached to data, if any.
#'
#' @param x A licor object
#'
#' @return Returns the remarks present in the original file, if any, or null
#' if none exist. Remarks are listed with the row they come immediately before.
#'
#' @examples \dontrun{
#'  remarks <- get_remarks(licor_data)
#' }
#' @rdname get_remarks
#' @export

get_remarks <- function(x) {
    y <- 0
    if (length(attributes(x)$remarks) >= 1) {
    for (i in row(attributes(x)$remarks)) {
      y[i] <- min(which(x$hhmmss_Sys > attributes(x)$remarks[[i, 1]]))
    }
    attributes(x)$remarks[3] <- y
    for (i in row(attributes(x)$remarks)) {
      y[i] <- max(which(x$hhmmss_Sys < attributes(x)$remarks[[i, 1]]))
    }
    attributes(x)$remarks[4] <- y
    attributes(attributes(x)$remarks)$names[3] <- "Before row"
    attributes(attributes(x)$remarks)$names[4] <- "After row"
    return(attributes(x)$remarks)
    } else {
      NULL
    }
}

#' Combines any number of licor files, in the order they are passed.
#'
#' @param combo A list of licor objects, to be combined
#'
#' @return Returns a licor composed of all the passed licor objects
#'
#' @examples \dontrun{
#'  #nothing yet
#' }
#' @rdname combine_licor
#' @export

combine_licor <- function(combo) {
  full <- combo[[1]]
  temp <- attr(attributes(full)$names, "data_type")
  full <- tibble::add_column(full, file_index = 1, .before = "obs")
  attr(attributes(full)$names, "data_type") <- c("licor_file", temp)

  for (i in 2:length(combo)) {
    temp <- attr(attributes(combo[[i]])$names, "data_type")
    combo[[i]] <- tibble::add_column(combo[[i]], file_index = i, .before = "obs")
    attr(attributes(combo[[i]])$names, "data_type") <- c("licor_file", temp)

    temp <- attr(attributes(full)$names, "data_type")
    #combine the data
    full[setdiff(names(combo[[i]]), names(full))] <- NA
    combo[[i]][setdiff(names(full), names(combo[[i]]))] <- NA
    full <- rbind(full, combo[[i]])
    attr(attributes(full)$names, "data_type") <- temp

    #combine header datq
    for (j in 1:max(c(length(attributes(full)$header_data)),length(attributes(combo[[i]])))) {
        attributes(full)$header_data[[j]][i] <- attributes(combo[[i]])$header_data[[j]]
    }
  }
  invisible(full)
}
