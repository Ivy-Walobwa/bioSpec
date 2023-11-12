server <- function(input, output, session) {
  table_data <- reactive({
    # Use few columns for table
    columns <- c('locality', 'scientificName', 'vernacularName', 'sex', 'kingdom', 'family', 'higherClassification', 'longitudeDecimal', 'latitudeDecimal')
    table_data <- data[, columns]
  })
  
  get_data <- reactive({
    get_data <- data
  })

  # Filter the data by scientific Name or vernacularName
  filter_data <- eventReactive(input$species_name, {
    validate(
      need(input$species_name, "Please select Vernacular name or Scientific name to visualize them here")
    )
    
    filter_data <- dplyr::filter(get_data(),get_data()$scientificName %in% input$species_name | 
                                   get_data()$vernacularName %in% input$species_name)
  }, ignoreNULL = FALSE)


 observe({
      updateSelectizeInput(session, 'species_name',
       choices = c(get_data()["scientificName"], get_data()["vernacularName"]),
       server = TRUE)
    })
  
  # Visualization of species on the map
  output$leafletMap <- renderLeaflet({
    #input_data
    filter_data <- filter_data()
    
    # Leaflet popup features
    filter_data$popup_features <- with(filter_data, paste(
      "<p> <b>Vernacular name:</b>", vernacularName, " </br>",
      "<b>Scientific name:</b>", scientificName, "</br>",
      "<b>Kingdom:</b>", kingdom, "</br>",
      "<b>Family:</b>", family, "</br>",
      "<b>Sex:</b>", sex, "</br>",
      "<b>Locality:</b>", locality, "</br>",
      "<b>Event Date:</b>", eventDate, "</br>",
      "<b>Event Time:</b>", eventTime, "</br>",
      "</p>"
      ))
    
    leaflet(filter_data) %>%
      addTiles() %>%
      setView(lng = 19.25, lat = 52.20, zoom=6) %>%
      addCircleMarkers(
        lat = filter_data$latitudeDecimal, 
        lng = filter_data$longitudeDecimal,
        popup = filter_data$popup_features,
        stroke = FALSE, 
        fillOpacity = 0.5,
        color="#0099F9"
        )
  })

  output$timeline <- renderPlotly({
      #input_data
      filter_data <- filter_data()
      
      # Load the event date
      date <- as.Date(filter_data$eventDate, "%m/%d/%y")

      # Display time line with plotly
      p <- ggplot(filter_data, aes(x=date, y=individualCount, size=3))
      p <- p + labs(title="Timeline of selected species", x="Year", y="Number of occurrences")
      p <- p + geom_point(alpha = 0.5)
      p <- p + scale_x_date(date_breaks="1 year", date_minor_breaks = "1 month" ,date_labels = "%Y")
      p <- p + theme_bw()
      p <- p + theme(legend.position="none")
      p <- p + theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
      
      # Plot data using plotly
      fig <- plotly::ggplotly(p)
    
  })
}