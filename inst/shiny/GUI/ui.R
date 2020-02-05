library(plotly)
ui <- shinyUI(
  navbarPage("Menu",
             tabPanel("Grafici",
                      pageWithSidebar(
                        headerPanel("Delitti italiani - Grafici"),
                        sidebarPanel(
                          selectInput("year", "Perfavore selezione l'anno",
                                      choices=c(2015, 2016, 2017)),
                        ),
                        mainPanel(
                          plotlyOutput("plotly_regione")
                        )
                      )
             ),
             tabPanel("Tabella",
                      headerPanel("Delitti italiani - Tabella"),
                      mainPanel(
                        plotlyOutput("table_plotly")
                      )

               )
  )

)
