#This is the application user interface for Iris Dataset

library(shiny)
library(plotly)

shinyUI(fluidPage(
  # Create a title
  titlePanel("Different Iris species' infomation"),
  
  sidebarLayout(
     # Four widgets are used to select species, x and y axises, and to adjust slider 
    sidebarPanel("side panel",
      
      # This is a widget called radio button used to choose a species            
      #radioButtons("Iris", label = h3("Iris Species"), 
       #         choices = list("Setosa" = "setosa", "versicolor" = "versicolor", 
        #                      "virginica" = "virginica"), 
         #       selected = "setosa"),
    
      # This is a widget called select box used to select what's on the x-axis
      selectInput("Xaxis", label = h3("X-axis"), 
                choices = list("Petal Length" = "Petal.Length",
                              "Petal Width" = "Petal.Width"), 
                selected = "Petal.Length"),
    
    # This is a widget called select box used to select what's on the y-axis
    selectInput("Yaxis", label = h3("Y-axis"), 
                choices = list("Sepal Length" = "Sepal.Length",
                               "Sepal Width" = "Sepal.Width"), 
                selected = "Sepal.Length"),
    
    sliderInput("slider", label = h3("Adjust markers"), min = 0, 
                max = 10, value = 3)
    ),
  
    
    # the main panel contains a visual representation of the iris dataset
    mainPanel(
              plotlyOutput('scatter')
    )
  )
))
