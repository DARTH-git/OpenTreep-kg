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

#' createTree
#' \{createTree} Deploy shiny app
#'
#' @param
#' @return
#' Interface with the json file inside the directory output
#' @export
createTree <- function(fileName) {

  # path_aux <- paste0("output/",fileName, ".json")
  # path_aux <- paste0(path_aux)
  # #print(path)
  # assign("path", path_aux, envir = .GlobalEnv)
  # fileName <<- fileName
  #
  # # Deploy app --------------------------------------------------------------
  # path_aux2 = "R -e \"shiny::runApp('inst/app.R', launch.browser = TRUE)\""
  # #system(path_aux2, wait = FALSE)
  # shiny::runApp(appDir = "inst/app.R",port = 3522)
  #
  # return(path_aux)

  fileName <<- fileName
  appDir <- system.file("myapp", package = "OpenTree")

  path_aux <- file.path(wd, paste0(fileName, ".json"))
  assign("path_file", path_aux, envir = .GlobalEnv)

  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `mypackage`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
  return(fileName)

}
