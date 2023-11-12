mapServer <- function(id, filter_data) {
  moduleServer(id, function(input, output, session) {
    output$leafletMap <- renderLeaflet({
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
      setView(lng = 19.25, lat = 52.20, zoom = 6) %>%
      addCircleMarkers(
        lat = filter_data$latitudeDecimal,
        lng = filter_data$longitudeDecimal,
        popup = filter_data$popup_features,
        stroke = FALSE,
        fillOpacity = 0.5,
        color = "#0099F9",
        clusterOptions = markerClusterOptions()
        )
    })
  })
}