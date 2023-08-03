output$select_kingdom <- renderUI(
  selectInput(inputId = "select1", label = "Add a Label",
              choices = "Add list of choices")
)

output$select_phylum <- renderUI(
  selectInput(inputId = "select2", label = "Add a Label",
              choices = unique(d$Phylum[d$Kingdom %in% input$mykingdom]))
)