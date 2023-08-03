output$selectcommonnames <- renderUI(
  selectInput(inputId = "select3",
              label = "Add a Label Here",
              choices = unique(use_data()$CommonName),
              multiple = TRUE)
)

output$mymap <- renderLeaflet(
  use_data() %>%
    filter(CommonName %in% input$mycommonnames) %>%
    leaflet() %>%
    addTiles() %>%
    addCircleMarkers()
)