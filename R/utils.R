#' Get vector of acceptable data types
#'
#' @examples
#' acceptable_types()
#'
#' @export
acceptable_types <- function() {

  c("Auxiliary", "Const", "FLR",   "FlrLS", "FlrStats", "GasEx", "LeafQ", "Leak",  "Match",
    "Meas",  "MPF", "Stability", "Status", "Sys", "UserDefVar")

}
