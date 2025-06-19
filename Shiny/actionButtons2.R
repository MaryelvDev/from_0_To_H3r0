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
  last_button <- reactiveVal(NULL)  # Almacena el último botón presionado
  
  # Observadores para cada botón
  observeEvent(input$click, { last_button("click") })
  observeEvent(input$drink, { last_button("drink") })
  observeEvent(input$eat,   { last_button("eat") })
  
  # Reactive con switch
  button_message <- reactive({
    req(last_button())  # Espera hasta que un botón sea presionado
    switch(last_button(),
           "click" = "¡Hiciste clic en 'Click me!'",
           "drink" = "¡Hiciste clic en 'Drink me!'",
           "eat"   = "¡Hiciste clic en 'Eat me!'"
    )
  })
  
  output$rndmText <- renderText({
    button_message()
  })
}

shinyApp(ui, server)
