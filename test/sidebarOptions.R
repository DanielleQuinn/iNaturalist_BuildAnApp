#### ---> FIND AND UPDATE CODE: This piece of code will let you
#### select the kingdom you want to look at from a variety of choices.
#### You will need to update the label! [[19]]
output$select_kingdom <- renderUI(
  selectInput(inputId = "my_kingdom",
              label = "Pick a Kingdom",
              choices = unique(d$Kingdom)))
#### END CODE AND UPDATE <---

#### ---> FIND AND UPDATE CODE: This piece of code will let you
#### select the phylum you want to look at from a variety of choices.
#### You will need to update the label! [[21]]
output$select_phylum <- renderUI(
  selectInput(inputId = "my_phylum",
              label = "Pick a Phylum",
              choices = unique(d$Phylum[d$Kingdom %in% input$my_kingdom])))

#### END CODE AND UPDATE <---