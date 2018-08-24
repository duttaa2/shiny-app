library(shiny)
library(shinydashboard)
library(ggplot2)
library(plotly)

ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody()
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)