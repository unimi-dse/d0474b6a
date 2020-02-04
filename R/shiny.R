#' Shiny app shows the crimes situation in Italy in the last years
#'
#' The function goes without arguments.
#'
#' @return Runs shiny app.
#'
#' @export
runGUI <- function() {
  shiny::runApp(system.file("shiny/GUI", package = "crimes"), launch.browser = T)
}
