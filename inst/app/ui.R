ui <- fluidPage(
  title = "BioSpec",
  theme = bs_theme(version = 5),
  lang = "en",
  tags$head(tags$style(sass(sass_file("www/custom.scss")))),
  div(class = "d-flex flex-nowrap main-wrapper",
      sideNavigationUI("sidenav"),
      div(class = "flex-grow-1", mainContentUI())),
  tags$script(src = "app.js")

)
