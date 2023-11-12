timelineUI <- function(id) {
  ns <- NS(id)
  div(class = "card shadow",
    div(class = "card-body",
        div(class = "card-title",
            h2("Timeline")
        ),
        div(class = "card-text",
        plotlyOutput("timeline")
 )
    )
    )

}