timelineServer <- function(id, .data) {
  moduleServer(id, function(input, output, session) {
    output$plot <- renderPlotly({
      filter_data <- .data()
      # Load the event date
      date <- as.Date(filter_data$eventDate, "%Y-%m-%d")

      # Display time line with plotly
      p <- ggplot(filter_data, aes(x = date, y = individualCount, size = 3))
      p <- p + labs(title = "Timeline of selected species", x = "Year", y = "Number of occurrences")
      p <- p + geom_point(alpha = 0.5, color="#0099F9")
      p <- p + scale_x_date(date_breaks = "1 year", date_minor_breaks = "1 month", date_labels = "%Y")
      p <- p + theme_bw()
      p <- p + theme(legend.position = "none")
      p <- p + theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))

      # Plot data using plotly
      fig <- plotly::ggplotly(p)

    })
  })
}