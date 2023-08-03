# Get tools from the library ----

##### ---> FIND CODE: This piece of code collects all of the
##### different library tools that this app will use

##### END CODE <---

# Import the iNaturalist data ----

##### ---> FIND CODE: This piece of code reads a data set
##### called application_data2.csv

##### END CODE <---

# Source in the main pieces of the User Interface (UI) ----

#### ---> GO COMPLETE dashboardHeader.R
source("stepthrough/dashboardHeader.R", local = TRUE)

#### ---> GO COMPLETE dashboardSidebar.R
source("stepthrough/dashboardSidebar.R", local = TRUE)

#### ---> GO COMPLETE dashboardBody.R
source("stepthrough/dashboardBody.R", local = TRUE)

# Put all these pieces together to create the User Interface (UI)

##### ---> FIND CODE: This piece of code creates the ui

##### END CODE <---

# Server
server <- function(input, output) {
  
  #### ---> Set up the sidebar options
  source("stepthrough/sidebarOptions.R", local = TRUE)
  
  #### ---> Filter the data using the sidebar tools
  source("stepthrough/filterData.R", local = TRUE)
  
  #### ---> What does the explore tab do?
  source("stepthrough/exploreTab.R", local = TRUE)
  
  #### ---> What does the map tab do?  
  source("stepthrough/mapTab.R", local = TRUE)
  
}

# Run the application
##### ---> FIND CODE: This piece of code runs the shiny app using the
##### ui and the server

##### END CODE <---