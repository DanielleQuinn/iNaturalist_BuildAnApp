# CODE OPTION 1 ----------------------------------------- #
output$allcommonnames <- renderDataTable(
  use_data() %>% 
    count(Class, ScientificName, CommonName) %>%
    arrange(desc(n)))

# CODE OPTION 2 ----------------------------------------- #
ui <- dashboardPage(
  header,
  sidebar,
  body)

# CODE OPTION 3 ----------------------------------------- #
output$observations <- renderInfoBox(
  infoBox(title = "Add a title here, inside the quotes",
          value = use_data() %>% nrow(),
          color = "white"))

# CODE OPTION 4 ----------------------------------------- #
leafletOutput("mymap")

# CODE OPTION 5 ----------------------------------------- #
uiOutput("select_kingdom"),

# CODE OPTION 6 ----------------------------------------- #
output$class <- renderInfoBox(
  infoBox(title = "Add a title here, inside the quotes",
          value = use_data() %>% distinct(Class) %>% nrow(),
          color = "white"))

# CODE OPTION 7 ----------------------------------------- #
menuItem("Explore", tabName = "explore", icon = icon("dashboard")),

# CODE OPTION 8 ----------------------------------------- #
uiOutput("select_commonnames"),

# CODE OPTION 9 ----------------------------------------- #
infoBoxOutput("species"),

# CODE OPTION 10 ---------------------------------------- #
shinyApp(ui, server)

# CODE OPTION 11 ---------------------------------------- #
fluidRow(box(dataTableOutput("allcommonnames"), width = 12))),

# CODE OPTION 12 ---------------------------------------- #
d <- read.csv("application_data.csv")

# CODE OPTION 13 ---------------------------------------- #
infoBoxOutput("observations"),

# CODE OPTION 14 ---------------------------------------- #
menuItem("Map", tabName = "map", icon = icon("globe"))

# CODE OPTION 15 ---------------------------------------- #
uiOutput("select_phylum"),

# CODE OPTION 16 ---------------------------------------- #
library(dplyr)
library(shiny)
library(shinydashboard)
library(tidyr)
library(ggplot2)
library(leaflet)

# CODE OPTION 17 ---------------------------------------- #
output$mymap <- renderLeaflet(
  use_data() %>%
    filter(CommonName %in% input$my_commonnames) %>%
    leaflet() %>%
    addTiles() %>%
    addCircleMarkers())

# CODE OPTION 18 ---------------------------------------- #
output$species <- renderInfoBox(
  infoBox(title = "Add a title here, inside the quotes",
          value = use_data() %>% distinct(ScientificName) %>% nrow(),
          color = "white"))

# CODE OPTION 19 ---------------------------------------- #
output$select_kingdom <- renderUI(
  selectInput(inputId = "my_kingdom",
              label = "Put your label here, inside the quotes",
              choices = unique(d$Kingdom)))

# CODE OPTION 20 ---------------------------------------- #
infoBoxOutput("class"),

# CODE OPTION 21 ---------------------------------------- #
output$select_phylum <- renderUI(
  selectInput(inputId = "my_phylum",
              label = "Put your label here, inside the quotes",
              choices = unique(d$Phylum[d$Kingdom %in% input$my_kingdom])))

# CODE OPTION 22 ---------------------------------------- #
output$select_commonnames <- renderUI(
  selectInput(inputId = "my_commonnames",
              label = "Put your label here, inside the quotes",
              choices = unique(use_data()$CommonName),
              multiple = TRUE))

# CODE OPTION 23 ---------------------------------------- #
use_data <- reactive(d %>% filter(Kingdom %in% input$my_kingdom,
                                  Phylum %in% input$my_phylum))
