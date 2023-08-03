#### ---> FIND CODE: This piece of code will filter the data
#### so that it only includes the kingdom and phylum
#### that have been picked [[23]]
use_data <- reactive(d %>% filter(Kingdom %in% input$my_kingdom,
                                  Phylum %in% input$my_phylum))

#### END CODE <----