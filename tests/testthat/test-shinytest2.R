library(shinytest2)

test_that("{shinytest2} recording: app", {
  app <- AppDriver$new(name = "app", height = 813, width = 1139)
  app$set_inputs(`search-species_name` = "Aix galericulata")
  app$expect_values()
  app$set_inputs(`search-species_name` = "Grus grus")
  app$set_inputs(`search-species_name` = "")
  app$set_inputs(`search-species_name` = "Tringa glareola")
})
