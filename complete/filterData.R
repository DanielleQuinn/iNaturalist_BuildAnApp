use_data <- reactive(d %>% filter(Kingdom %in% input$mykingdom,
                                  Phylum %in% input$myphylum))