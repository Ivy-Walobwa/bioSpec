searchInputUI <- function(id) {
  ns <- NS(id)
  tagList(
    div(class = "search px-1",
          selectizeInput(ns("species_name"),
               label = "Search by Scientific or Vernacular Name",
               choices = NULL
      ))
      )
}