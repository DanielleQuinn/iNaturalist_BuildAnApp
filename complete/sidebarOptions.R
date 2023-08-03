output$select_kingdom <- renderUI(
  selectInput(inputId = "mykingdom", label = "Select Kingdom",
              choices = unique(d$Kingdom))
)

output$select_phylum <- renderUI(
  selectInput(inputId = "myphylum", label = "Select Phlum",
              choices = unique(d$Phylum[d$Kingdom %in% input$mykingdom]))
)