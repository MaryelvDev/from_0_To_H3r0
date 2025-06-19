library(shiny)

animals <- c('dog', 'cat', 'platypus', 'moon fish', 'I hate myself')

ui <- fluidPage( 
  checkboxGroupInput("animal", "What animals do you like?", 
                     animals),
  titlePanel('Another checkbox example'),
  checkboxInput("cleanup", "Clean up?", value = TRUE), 
  checkboxInput("shutdown", "Shutdown?")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)