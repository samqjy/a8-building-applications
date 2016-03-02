library(plotly)
library(shiny)
library(dplyr)
library(rsconnect)
dataIris <- iris

shinyServer(function(input, output) {
  
  #The scatter plot
  output$plot <- renderPlotly({
    length <- (paste0(input$part, '.Length'))
    width <- (paste0(input$part, '.Width'))
    plot_ly(data = dataIris,
           type = "scatter",
           marker = list(color = input$color),
           mode = "markers",
           x = eval(parse(text = length)),
           y = eval(parse(text = width))
           ) %>%
    layout(xaxis = list(title = 'Length'), yaxis = list(title = 'Width'))
  })

})