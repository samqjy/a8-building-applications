library(shiny)
library(plotly)
library(rsconnect)

shinyUI(fluidPage(
    #Title
    titlePanel("Iris"),
    #Sidebar for input
    sidebarLayout(
      sidebarPanel(
        #Choosing color
        radioButtons("color", label = "What color?",
                     choices = list("Green" = 'green', "Blue" = 'blue', "Red" = 'red'), 
                     selected = 'green'),
        #Choosing which part of the data
        selectInput("part", label = "Which part of the data?",
                    choices = list("Sepal" = 'Sepal', "Petal" = 'Petal'),
                    selected = 'Sepal')
      ),
      #Displaying plotly map
      mainPanel(
        plotlyOutput("plot")
      )
    )
))