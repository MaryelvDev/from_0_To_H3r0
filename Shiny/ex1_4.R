library(shiny)

rndmList <- list(
  "listA" = c('one', 'two', 'tree?'),
  "listB" = c('hell', 'no', 'a', 'list'),
  "listC" = ''
)

ui <- fluidPage(
 selectInput("input", "Choose something idk...", rndmList ) 
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)