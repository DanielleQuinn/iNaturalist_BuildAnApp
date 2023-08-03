#### ---> FIND AND UPDATE CODE: This piece of code will let you
#### select as many common names as you want, from a variety of choices.
#### You will need to update the label! [[22]]
output$select_commonnames <- renderUI(
  selectInput(inputId = "my_commonnames",
              label = "Pick Common Names",
              choices = unique(use_data()$CommonName),
              multiple = TRUE))
#### END CODE AND UPDATE <---

#### ---> FIND CODE: This piece of code will create a map
#### using the leaflet tool [[17]]
output$mymap <- renderLeaflet(
  use_data() %>%
    filter(CommonName %in% input$my_commonnames) %>%
    leaflet() %>%
    addTiles() %>%
    addCircleMarkers())
#### END CODE <---