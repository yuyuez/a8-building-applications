# read in data 
library(shiny)
library(plotly)

data("iris")

# uses another R script that contains the function in this server file
source('built_in_scatter.R')

shinyServer(function(input, output) {
  # Create a scatter plot to show desired information
  output$scatter <- renderPlotly({
    plotScatter(iris, input$Xaxis, input$Yaxis, input$slider)
    
  })
})