library(shiny)
library(rsconnect)
library(sass)
library(bslib)
library(leaflet)
library(plotly)
library(shinycssloaders)

data <- read.csv("./data/poland-media.csv", header=TRUE, stringsAsFactors=FALSE)

