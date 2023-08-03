# --------------------------------------------------------------------- #
# STEP ONE: Get tools from the library -------------------------------- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code collects all of the
##### different library tools that this app will use

##### END CODE <---

# --------------------------------------------------------------------- #
# STEP TWO: Import the iNaturalist data ------------------------------- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code reads a data set
##### called application_data.csv

##### END CODE <---

# --------------------------------------------------------------------- #
# STEP THREE: Source in the main pieces of the User Interface (UI) ---- #
# --------------------------------------------------------------------- #

#### ---> GO COMPLETE dashboardHeader.R
source("dashboardHeader.R", local = TRUE)

#### ---> GO COMPLETE dashboardSidebar.R
source("dashboardSidebar.R", local = TRUE)

#### ---> GO COMPLETE dashboardBody.R
source("dashboardBody.R", local = TRUE)

# --------------------------------------------------------------------- #
# STEP FOUR: Put the pieces together to create the User Interface (UI)- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code creates the ui

##### END CODE <---

# --------------------------------------------------------------------- #
# STEP FIVE: Create an interactive server ----------------------------- #
# --------------------------------------------------------------------- #

server <- function(input, output) {
  
  # STEP FIVE (A): Set up the sidebar options
  #### ---> GO COMPLETE sidebarOptions.R
  source("sidebarOptions.R", local = TRUE)
  
  # STEP FIVE (B): Filter the data using the sidebar tools
  #### ---> GO COMPLETE sidebarOptions.R
  source("filterData.R", local = TRUE)
  
  # STEP FIVE (C): What does the explore tab do?
  #### ---> GO COMPLETE exploreTab.R
  source("exploreTab.R", local = TRUE)
  
  # STEP FIVE (D): What does the map tab do?
  #### ---> GO COMPLETE mapTab.R
  source("mapTab.R", local = TRUE)
  
}

# --------------------------------------------------------------------- #
# STEP SIX: Run the application! -------------------------------------- #
# --------------------------------------------------------------------- #

##### ---> FIND CODE: This piece of code runs the shiny app using the
##### ui and the server

##### END CODE <---
