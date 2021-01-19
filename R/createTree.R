##************************************************************************
## Script Name: Create Tree Function
## Purpose:
##
##
## Created:
## Authors:
##
## GitHub: marianafdz465
##
##
##************************************************************************

library(rstudioapi)
#' createTree
#' \{createTree} Deploy shiny app
#'
#' @param
#' @return
#' Interface with the json file inside the directory output
#' @export
createTree <- function(fileName) {
  fileName <<- fileName

  appDir <<- system.file("myapp", package = "OpenTree")
  #path_aux <- file.path(wd, paste0(fileName, ".json"))
  path_aux <- paste0(appDir,"/", fileName, ".json")
  assign("path_file", path_aux, envir = .GlobalEnv)
  #assign("path_file", path_aux, envir = .GlobalEnv)

  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `OpenTree`.", call. = FALSE)
  }
  #shiny::runApp(appDir, display.mode = "normal")
  jobRunScript("inst/myapp/shiny-run.R", importEnv = TRUE)

  return(path_aux)

}
