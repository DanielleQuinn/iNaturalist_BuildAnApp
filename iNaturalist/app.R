# Get tools from the library
library(dplyr)
library(shiny)
library(shinydashboard)
library(tidyr)
library(ggplot2)
library(leaflet)

# Import the iNaturalist data
d <- read.csv("application_data2.csv")

# Source in the main pieces of the User Interface (UI)
source("stepthrough/dashboardHeader.R", local = TRUE)
source("stepthrough/dashboardSidebar.R", local = TRUE)
source("stepthrough/dashboardBody.R", local = TRUE)

# User Interface (UI)
ui <- dashboardPage(
  header,
  sidebar,
  body
)

# Server
server <- function(input, output) {
  
  # Set up the sidebar options
  source("stepthrough/sidebarOptions.R", local = TRUE)
  
  # Filter the data using the sidebar tools
  source("stepthrough/filterData.R", local = TRUE)
  
  # What does the explore tab do?
  source("stepthrough/exploreTab.R", local = TRUE)

  # What does the map tab do?  
  source("stepthrough/mapTab.R", local = TRUE)
  
}

# Run the application 
shinyApp(ui, server)
