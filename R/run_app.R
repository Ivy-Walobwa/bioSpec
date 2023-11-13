#' Run app
#'
#' @export
run_app <- function() {
  app_dir <- system.file("app", package = "bioSpec")
  if (app_dir == "") {
    stop(
      "Could not find the app directory. Try re-installing `i17`.",
      call. = FALSE
    )
  }
  shiny::shinyAppDir(appDir = app_dir)
}