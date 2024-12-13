

# How to activate repositories------ it will be for certain projects. Should do it in every new project
setRepositories()
## How to install packages------
install.packages("tidyverse", dependencies = TRUE)

# Activate Package
library(readxl)
library(tidyverse)

install.packages("ggplot", dependencies = T)
data(iris)

ggplot(iris, aes(Species, Sepal.width))+geom_point()
ggplot(iris, aes(Species, Sepal.width))+geom_point()
library(plotly)
install.packages("plotly", dependencies = T)
fig <-  plot_ly(x = c(0,1, 2), y = c(2, 1, 3), type = 'bar') %>%
  layout(title = 'A Figure Displayed with print(fig)',
         plot_bgcolor='#e5ecf6', 
         xaxis = list( 
           zerolinecolor = '#ffff', 
           zerolinewidth = 2, 
           gridcolor = 'ffff'), 
         yaxis = list( 
           zerolinecolor = '#ffff', 
           zerolinewidth = 2, 
           gridcolor = 'ffff'))

print(fig)

ggplot(iris, aes(Species, Sepal.Length, Sepal.Width, col=Species))+geom_boxplot()
ggplot(iris, aes(Species, Sepal.Width, col=Species))+geom_point()





