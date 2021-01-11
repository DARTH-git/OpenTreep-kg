#' @export
runExample <- function(fileName) {
  fileName <<- fileName
  appDir <- system.file("myapp", package = "OpenTree")
  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `mypackage`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
