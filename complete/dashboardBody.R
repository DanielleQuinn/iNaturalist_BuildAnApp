body <- dashboardBody(
  tabItems(
    tabItem(tabName = "explore",
            infoBoxOutput("observations"),
            infoBoxOutput("class"),
            infoBoxOutput("species"),
            fluidRow(box(dataTableOutput("allcommonnames"), width = 12))),
    tabItem(tabName = "map",
            uiOutput("selectcommonnames"),
            leafletOutput("mymap")
            )
  )
)