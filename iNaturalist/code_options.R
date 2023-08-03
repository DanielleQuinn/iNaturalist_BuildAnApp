####
library(dplyr)
library(shiny)
library(shinydashboard)
library(tidyr)
library(ggplot2)
library(leaflet)
####


####
d <- read.csv("application_data2.csv")
####


####
menuItem("Tab1", tabName = "tab1", icon = icon("dashboard")),
####


####
menuItem("Tab2", tabName = "tab2", icon = icon("globe"))
####


####
ui <- dashboardPage(
  header,
  sidebar,
  body
)
####


####
shinyApp(ui, server)
####