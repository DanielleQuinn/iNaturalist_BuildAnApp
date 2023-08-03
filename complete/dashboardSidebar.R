sidebar <- dashboardSidebar(
  sidebarMenu(
    uiOutput("select_kingdom"),
    uiOutput("select_phylum"),
    menuItem("Explore", tabName = "explore", icon = icon("dashboard")),
    menuItem("Map", tabName = "map", icon = icon("globe"))
  )
)
