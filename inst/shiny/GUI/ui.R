library(plotly)
ui <- shinyUI(
  navbarPage("Menu",
             tabPanel("Grafici",
                      pageWithSidebar(
                        headerPanel("Delitti italiani - Grafici"),
                        sidebarPanel(
                          selectInput("year", "Perfavore selezione l'anno",
                                      choices=c("Tutti","2014","2015", "2016", "2017", "2018")),
                        ),
                        mainPanel(
                          plotlyOutput("plotly_regione"),
                          plotlyOutput("plotly_crimini")
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
