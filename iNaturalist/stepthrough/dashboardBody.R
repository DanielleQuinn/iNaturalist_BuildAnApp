body <- dashboardBody(
  tabItems(
    tabItem(tabName = "explore",
            #### Modify this section for the explore tab
            infoBoxOutput("observations"),
            infoBoxOutput("class"),
            infoBoxOutput("species"),
            fluidRow(box(dataTableOutput("allcommonnames"), width = 12))
            ####
            ),

    tabItem(tabName = "map",
            #### Modify this section for the map tab
            uiOutput("selectcommonnames"),
            leafletOutput("mymap")
            ####
            )
  )
)