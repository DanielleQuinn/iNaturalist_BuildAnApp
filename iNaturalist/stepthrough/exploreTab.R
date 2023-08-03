output$observations <- renderInfoBox(
  infoBox(title = "Observations",
          value = use_data() %>% nrow(),
          color = "blue")
)

output$class <- renderInfoBox(
  infoBox(title = "Classes",
          value = use_data() %>% distinct(Class) %>% nrow(),
          color = "red")
)
output$species <- renderInfoBox(
  infoBox(title = "Species",
          value = use_data() %>% distinct(ScientificName) %>% nrow(),
          color = "green")
)

output$allcommonnames <- renderDataTable(
  use_data() %>% 
    count(Class, ScientificName, CommonName) %>%
    arrange(desc(n))
)