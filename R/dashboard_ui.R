mainContentUI <- function() {
  div(class = "main-content pe-3",
        div(class = "main-content__content py-3 ps-3",
            div(class = "card-body d-flex gap-3",
              div(class = "flex-grow-1 d-flex flex-column gap-3",
                 mapUI("mapUI"),
                timelineUI("timelineUI")
              ),
              searchInputUI("search"),
              hamburgerUI("hamburger")

            )
        )
  )
}
