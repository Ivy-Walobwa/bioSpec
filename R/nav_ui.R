sideNavigationUI <- function(id) {
  ns <- NS(id)
  div(class = "side-wrapper p-5",
    div(class = "close-icon", "X"),
    img(src = "logo.png", class = "img-fluid mb-3", width = "100px"),
    h1(class = "text-white mb-5", "BioSpec"),
    div(class = "side-wrapper__text mb-3", "Home"),
    div(class = "side-wrapper__text active mb-3", "Dashboard"),
    div(class = "side-wrapper__text mb-3", "Contact"),
  )
}

hamburgerUI <- function(id) {
  ns <- NS(id)
  div(
    class = "hamburger-wrapper",
    div(
      class = "d-flex align-items-center",
      div(
        class = "hamb",
      span(class = "hamb-line")
      ),
      h1(class = "hamb-text m-0", "BioSpec"))

  )

}