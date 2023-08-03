# Get tools from the library
library(dplyr)
library(shiny)
library(shinydashboard)
library(tidyr)
library(ggplot2)
library(leaflet)

# Import the iNaturalist data
d <- read.csv("application_data.csv")

# Source in the main pieces of the User Interface (UI)
source("dashboardHeader.R", local = TRUE)
source("dashboardSidebar.R", local = TRUE)
source("dashboardBody.R", local = TRUE)

# User Interface (UI)
ui <- dashboardPage(
  header,
  sidebar,
  body
)

# Server
server <- function(input, output) {
  
  # Set up the sidebar options
  source("sidebarOptions.R", local = TRUE)
  
  # Filter the data using the sidebar tools
  source("filterData.R", local = TRUE)
  
  # What does the explore tab do?
  source("exploreTab.R", local = TRUE)

  # What does the map tab do?  
  source("mapTab.R", local = TRUE)
  
}

# Run the application 
shinyApp(ui, server)
