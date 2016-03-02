library(plotly)
library(dplyr)
 
  plotScatter <- function(irisData, len, wid, marker){
        
    plot_ly(data = irisData, x = eval(parse(text = len)), y = eval(parse(text = wid)), 
            mode = "markers", marker = list(size = marker, color = toRGB("blue")) %>%
  return()
    )
}