##************************************************************************
## Script Name: Create Tree Function
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
#' createTree
#' \{createTree} Deploy shiny app
#'
#' @param
#' @return
#' Interface with the json file inside the directory output
#' @export
createTree <- function(fileName, dirname) {

  appDir <- system.file("myapp", package = "OpenTree")
  path_aux <- paste0(dirname,"/", fileName, ".json")
  assign("path_file", path_aux, envir = .GlobalEnv)

  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `OpenTree`.", call. = FALSE)
  }
  path_aux2 <- paste0(appDir, "/shiny-run.R")
  source(path_aux2)
  #Run in the background
  #path_shinyrun <- paste0(appDir, "/shiny-run.R")
  #jobRunScript(path_shinyrun, importEnv = TRUE)
}




