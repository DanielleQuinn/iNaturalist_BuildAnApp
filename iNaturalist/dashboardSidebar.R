sidebar <- dashboardSidebar(
  sidebarMenu(
    uiOutput("select1"),
    uiOutput("select2"),
    #### ---> FIND CODE: This piece of code creates a menu item 
    #### that creates the Explore tab
    menuItem("Tab1", tabName = "tab1", icon = icon("dashboard")),
    #### END CODE
    
    #### ---> FIND CODE: This piece of code creates a menu item
    #### that creates the Map tab
    menuItem("Tab2", tabName = "tab2", icon = icon("globe"))
    #### END CODE
    
  )
)
