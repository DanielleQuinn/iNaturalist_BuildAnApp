use_data <- reactive(d %>% filter(Kingdom %in% input$select1,
                                  Phylum %in% input$select2))