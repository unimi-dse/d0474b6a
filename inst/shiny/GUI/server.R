library(plotly)
server <- shinyServer(function(input, output, session){
  dataCrimes<-read.csv(system.file("data", "crimes.csv", package="crimes"),sep=";")

  table_plot <- plot_ly(
    type = 'table',
    header = list(
      values = c("<b>Delitti</b>", c("Territorio", "Tipologia", "Anno", "Quantità")),
      align = c('left', rep('center', 4)),
      line = list(width = 1, color = 'black'),
      fill = list(color = 'rgb(235, 100, 230)'),
      font = list(family = "Arial", size = 14, color = "white")
    ),
    cells = list(
      values = rbind(
        rownames(dataCrimes),
        t(as.matrix(dataCrimes$Territorio)),
        t(as.matrix(dataCrimes$Tipo.di.delitto)),
        t(as.matrix(dataCrimes$TIME)),
        t(as.matrix(dataCrimes$Value))

      ),
      align = c('left', rep('center', 4)),
      line = list(color = "black", width = 1),
      fill = list(color = c('rgb(235, 193, 238)', 'rgba(228, 222, 249, 0.65)')),
      font = list(family = "Arial", size = 12, color = c("black"))
    ))


  dataCrimesSelected <- dataCrimes[,c("Territorio","Value")]
  delitti_per_regione = aggregate(dataCrimesSelected,
                                  by = list(dataCrimesSelected$Territorio),
                                  FUN = mean )

  bar_plot <- plot_ly(
    x = delitti_per_regione$Group.1,
    y = delitti_per_regione$Value,
    name = "Delitti per regione",
    type = "bar"
  )


  observe({
      output$table_plotly <- renderPlotly(table_plot)
      output$plotly_regione <- renderPlotly(bar_plot)

  })


})
