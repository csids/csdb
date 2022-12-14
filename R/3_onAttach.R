#' @import data.table ggplot2
#' @importFrom magrittr %>%
.onAttach <- function(libname, pkgname) {
    version <- tryCatch(
      utils::packageDescription("csdb", fields = "Version"),
      warning = function(w){
        1
      }
    )

  packageStartupMessage(paste0(
    "csdb ",
    version,
    "\n",
    "https://www.csids.no/csdb/"
  ))
}
