server <- function(input, output, session) {
  get_data <- reactive({
    get_data <- data
  })


  filter_data <- searchInputServer("search", get_data)
  mapServer("map", .data = filter_data)
  timelineServer("timeline", .data = filter_data)
}