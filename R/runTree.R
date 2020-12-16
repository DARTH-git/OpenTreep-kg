#' Vectorized categorical distribution
#'
#' \code{samplev} sample states for multiple individuals simultaneously.
#'
#' @param m.Probs matrix with probabilities (n.i * n.s)
#' @return n.i x 1 matrix filled with sampled health state(s) per individual
#' @export
runTree <- function() {
  appDir <- system.file("shiny-examples", "myapp", package = "OpenTree")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `OpenTree`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
