##************************************************************************
## Script Name: Open Tree Function
## Purpose:
##
##
## Created:
## Authors:
##
## GitHub: DARTH-git
##
##
##************************************************************************

#' openTree
#' \{openTree} openTree
#'
#' @param
#' @return
#'
#' @export
openTree <- function(dirname) {
  require(readr)
  appDir <- system.file("myapp/examples/02", package = "OpenTree")
  assign("dirname", dirname, envir = .GlobalEnv)

  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `OpenTree`.", call. = FALSE)
  }
  path_aux2 <- paste0(appDir, "/shiny-run.R")
  source(path_aux2)
}
