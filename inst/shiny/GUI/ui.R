ui <- shinyUI(
  pageWithSidebar(
    headerPanel("My first app"),
    sidebarPanel(
      selectInput("year", "Perfavore selezione l'anno",
                  choices=c(2015, 2016, 2017)),
    ),
    mainPanel(
      plotlyOutput("myplot")
    )
  )
)
