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
createTree <- function(fileName, dirname) {
  
  appDir <- system.file("myapp", package = "OpenTree")
  path_aux <- paste0(dirname,"/", fileName, ".json")
  assign("path_file", path_aux, envir = .GlobalEnv)

  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `OpenTree`.", call. = FALSE)
  }
  #shiny::runApp(appDir, display.mode = "normal")
  # jobRunScript("inst/myapp/shiny-run.R", importEnv = TRUE)
  #path_shinyrun <- paste0(appDir, "/shiny-run.R")
  #jobRunScript(path_shinyrun, importEnv = TRUE)
  #jobRunScript(paste0(libpath, "/OpenTree/myapp/shiny-run.R"), importEnv = TRUE)
  path_aux2 <- paste0(appDir, "/shiny-run.R")
  source(path_aux2)
  #return(path_aux)
}




