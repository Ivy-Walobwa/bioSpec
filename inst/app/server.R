server <- function(input, output, session) {
  filter_data <- searchInputServer("search", data)
  mapServer("map", .data = filter_data)
  timelineServer("timeline", .data = filter_data)
}