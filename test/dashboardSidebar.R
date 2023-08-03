sidebar <- dashboardSidebar(
  sidebarMenu(
    
    #### ---> FIND CODE: This piece of code indicates that the 
    #### option to select a kingdom should be placed here [[5]]
    uiOutput("select_kingdom"),
    #### END CODE <---
    
    #### ---> FIND CODE: This piece of code indicates that the 
    #### option to select a phylum should be placed here [[15]]
    uiOutput("select_phylum"),
    #### END CODE <---
    
    #### ---> FIND CODE: This piece of code creates a menu item 
    #### that creates the Explore tab[[7]]
    menuItem("Explore", tabName = "explore", icon = icon("dashboard")),
    
    #### END CODE <---
    
    #### ---> FIND CODE: This piece of code creates a menu item
    #### that creates the Map tab [[14]]
    menuItem("Map", tabName = "map", icon = icon("globe"))
    
    #### END CODE <---
    
  )
)
