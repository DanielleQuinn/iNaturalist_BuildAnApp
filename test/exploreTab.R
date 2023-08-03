#### ---> FIND AND UPDATE CODE: This piece of code will generate a
#### statistics about the number of observations and send ("render")
#### it to an info box.
#### You will need to update the title, and choose the colour of
#### the observations info box! [[3]]
output$observations <- renderInfoBox(
  infoBox(title = "# Observations",
          value = use_data() %>% nrow(),
          color = "blue"))
#### END CODE AND UPDATE <---

#### ---> FIND AND UPDATE CODE: This piece of code will generate a
#### statistics about the number of classes and send ("render")
#### it to an info box.
#### You will need to update the title, and choose the colour of
#### the class info box! [[6]]
output$class <- renderInfoBox(
  infoBox(title = "# Classes",
          value = use_data() %>% distinct(Class) %>% nrow(),
          color = "red"))
#### END CODE AND UPDATE <---

#### ---> FIND AND UPDATE CODE: This piece of code will generate a
#### statistic about the number of species and send ("render")
#### it to an info box.
#### You will need to update the title, and choose the colour of
#### the species info box! [[18]]
output$species <- renderInfoBox(
  infoBox(title = "# Species",
          value = use_data() %>% distinct(ScientificName) %>% nrow(),
          color = "green"))

#### END CODE AND UPDATE <---

#### ---> FIND CODE: This piece of code will count the number of 
#### observations for each class, scientific name, and common name,
#### and send ("render") it to a data table [[1]]
output$allcommonnames <- renderDataTable(
  use_data() %>% 
    count(Class, ScientificName, CommonName) %>%
    arrange(desc(n)))
#### END CODE <---