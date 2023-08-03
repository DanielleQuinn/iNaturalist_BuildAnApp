body <- dashboardBody(
  tabItems(
    
    #### ---> UPDATE the code below to specify the body for the explore tab
    tabItem(tabName = "explore",
    #### END UPDATE <---
    
        #### ---> FIND CODE: This piece of code looks for an info box
        #### output called "observations" [[13]]
    infoBoxOutput("observations"),
        #### END CODE <---
    
        #### ---> FIND CODE: This piece of code looks for an info box
        #### output called "class" [[20]]
    infoBoxOutput("class"),
        #### END CODE <---
    
        #### ---> FIND CODE: This piece of code looks for an info box
        #### output called "species" [[9]]
    infoBoxOutput("species"),
        #### END CODE <---
    
        #### ---> FIND CODE: This piece of code uses fluidRow to output
        #### a table that contains all of the common names [[11]]
    fluidRow(box(dataTableOutput("allcommonnames"), width = 12))),
    
        #### END CODE <---

    #### ---> UPDATE the code below to specify the body for the map tab
    tabItem(tabName = "map",
    #### END UPDATE <---
    
        #### ---> FIND CODE: This piece of code looks for an
        #### output called "select_commonnames" [[8]]
    uiOutput("select_commonnames"),
        #### END CODE <---
    
        #### ---> FIND CODE: This piece of code looks for a leaflet
        #### output called "mymap" [[4]]
    leafletOutput("mymap")
        #### END CODE <---
  )))