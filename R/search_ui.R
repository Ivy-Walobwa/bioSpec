searchInputUI <- function(id) {
  ns <- NS(id)
  tagList(
    div(class = "search px-1",
          selectizeInput(inputId = "species_name", 
               label = "Search by Scientific or Vernacular Name",
               choices = NULL
      ))
      
      )
}