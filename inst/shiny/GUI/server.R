server <- shinyServer(function(input, output, session){
  p <- plot_ly(
    x = c("giraffes", "orangutans", "monkeys"),
    y = c(20, 14, 23),
    name = "SF Zoo",
    type = "bar"
  )

  p2 <- plot_ly(
    type = "scatter",
    x = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
    y = c(28.8, 28.5, 37, 56.8, 69.7, 79.7, 78.5, 77.8, 74.1, 62.6, 45.3, 39.9),
    mode = "markers+lines") %>%
    layout(
      xaxis = list(
        ticktext = list("One", "Three", "Five", "Seven", "Nine", "Eleven"),
        tickvals = list(1, 3, 5, 7, 9, 11),
        tickmode = "array"
      ))

  observe({
    if (input$year == 2015) {
      output$myplot <- renderPlotly(p)
    } else {
      output$myplot <- renderPlotly(p2)
    }

  })


})
