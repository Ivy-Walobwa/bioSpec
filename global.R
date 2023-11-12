library(shiny)
library(shiny.emptystate)
library(sass)
library(bslib)
library(leaflet)
library(plotly)
library(shinycssloaders)

data <- read.csv("./data/poland.csv", header=TRUE, stringsAsFactors=FALSE)

