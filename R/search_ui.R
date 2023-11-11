searchInputUI <- function(id) {
  ns <- NS(id)
  tagList(
    div(class = "search px-1", textInput(ns("search"), "", "", placeholder = "Search for species", width = "100%")),
  )
}