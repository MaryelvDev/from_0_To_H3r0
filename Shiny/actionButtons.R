library(shiny)

ui <- fluidPage(
  fluidRow(
    column(6,
           actionButton("click", " Click me!", class = "btn-danger", icon = icon('arrow-pointer'))
    ),
    column(6,
           actionButton("drink", " Drink me!", class = "btn-lg btn-success", icon = icon('mug-hot'))
    )
  ),
  fluidRow(
    column(12,
           actionButton("eat", "Eat me!", class = "btn-block", icon = icon('bowl-food'))
    )
  ),
  mainPanel(
    textOutput("rndmText")
  )
)

server <- function(input, output, session) {
  
  observeEvent(input$click, {
    output$rndmText <- renderText({
      "Hi, you clicked 'Click me!'"
    })
  })
  
  # Opcional: Borrar el texto si otros botones son presionados
  observeEvent(input$drink, {
    output$rndmText <- renderText({ "Drink me :D" })
  })
  
  observeEvent(input$eat, {
    output$rndmText <- renderText({ "Eat me" })
  })
}

shinyApp(ui, server)
