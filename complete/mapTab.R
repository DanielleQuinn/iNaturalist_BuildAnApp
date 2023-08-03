output$selectcommonnames <- renderUI(
  selectInput(inputId = "mycommonnames",
              label = "Select Common Names",
              choices = unique(use_data()$CommonName),
              multiple = TRUE)
)

output$mymap <- renderLeaflet(
  use_data() %>%
    filter(CommonName %in% input$mycommonnames) %>%
    leaflet() %>%
    addTiles() %>%
    addCircleMarkers(popup = ~CommonName, radius = 1)
)