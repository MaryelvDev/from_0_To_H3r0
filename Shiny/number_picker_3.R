library(shiny)

ui <- fluidPage(
  sliderInput("x", "Please select a number", min = 1, max = 50, value = 25),
  sliderInput("y", "Please select another number", min = 1, max = 50, value = 25),
  textOutput("product"),
  textOutput("productPlus5"),
  textOutput("productPlus10")
)

server <- function(input, output, session) {
  product <- reactive({
    input$x * input$y
  })
  output$product <- renderText({
    paste(input$x, "times", input$y, "is ", input$x * input$y)
  })
  output$productPlus5 <- renderText({
    paste(input$x, "times", input$y, "plus 5 is ", product() + 5)
  })
  output$productPlus10 <- renderText({
    paste(input$x, "times", input$y, "plus 10 is ", product() + 10)
  })
}

shinyApp(ui, server)