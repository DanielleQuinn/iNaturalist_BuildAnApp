output$observations <- renderInfoBox(
  infoBox(title = "Add a Title Here",
          value = use_data() %>% nrow(),
          color = "white")
)

output$class <- renderInfoBox(
  infoBox(title = "Add a Title Here",
          value = use_data() %>% distinct(Class) %>% nrow(),
          color = "white")
)
output$species <- renderInfoBox(
  infoBox(title = "Add a Title Here",
          value = use_data() %>% distinct(ScientificName) %>% nrow(),
          color = "white")
)

output$allcommonnames <- renderDataTable(
  use_data() %>% 
    count(Class, ScientificName, CommonName) %>%
    arrange(desc(n))
)