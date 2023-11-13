timelineUI <- function(id) {
  ns <- NS(id)
  div(class = "card shadow",
    div(class = "card-body",
        div(class = "card-text",
        withSpinner(plotlyOutput(ns("plot")), color = "#0099F9")
 )
    )
    )

}