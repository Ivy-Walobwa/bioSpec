searchInputServer <- function(id, data) {
  moduleServer(id, function(input, output, session) {

    # Filter the data by scientific Name or vernacularName
    # Filter the data by scientific Name or vernacularName
    filter_data <- eventReactive(input$species_name, {
      validate(
      need(input$species_name, "Please select Vernacular name or Scientific name to visualize them here")
    )

      filter_data <- dplyr::filter(data, data$scientificName %in% input$species_name |
                                   data$vernacularName %in% input$species_name)
    }, ignoreNULL = FALSE)

    observe({
      updateSelectizeInput(session, 'species_name',
       choices = c(data["scientificName"], data["vernacularName"]),
       server = TRUE)
    })

    return(filter_data)
  })
}