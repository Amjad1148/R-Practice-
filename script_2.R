install.packages("ggplot2", dependencies = T)
library(ggplot2)
# code to generate any type of graph
#     ggplot(data = df, aes(x=names, y=height)) + geom_name of particular graph



# Data Import 
data(iris)
View(iris)


#SCATTER PLOT
#import or activate packages
library(ggplot2)
ggplot(data=iris, mapping=aes(x=Sepal.Length, y=Sepal.Width))+geom_point()
#Adding colours
ggplot(data=iris, mapping=aes(x=Sepal.Length, y=Sepal.Width, col=Species))+geom_point()

#Change based on size
ggplot(data=iris, mapping=aes(x=Sepal.Length, y=Sepal.Width, size=Species))+geom_point()

#change shap
ggplot(data=iris, mapping=aes(x=Sepal.Length, y=Sepal.Width,
                              shape=Species))+geom_point()

#multiple aesthetics
ggplot(data=iris, mapping=aes(x=Sepal.Length, y=Sepal.Width, shape=Species, col=Species))+geom_point()
# try to use shape or color do not use both

ggplot(data=iris, mapping=aes(x=Sepal.Length, y=Sepal.Width, col=Species))+geom_point(size=2)



#plot on mpg
data(mpg)
View(mpg)
ggplot(data = mpg, aes(x = cty, y = hwy))+geom_point()
ggplot(data = mpg, aes(x = cty, y = hwy, colour =manufacturer))+geom_point()

# to veiw zoomed file Cntrl+shift+6


# to save 
P1 <- ggplot(data = mpg, aes(x = cty, y = hwy, colour =manufacturer))+geom_point()
P1

ggsave("mpg_plot.pdf", plot = P1, width = 6, height = 5, units = "in")


ggsave("mpg_plot.png", plot = P1, width = 6, height = 5, units = "in", dpi = 600)




#Tidyverse
library(tidyverse)

# %>%  Cntrl+shift+M pipe operator

iris %>% select(iris$Species=='setosa')




x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)

plot(x, y)


data(women)
View(women)
P1 <- ggplot(data = women, mapping = aes(x = height, y = weight, colour = weight)) + geom_point()
ggsave("women_plot.pdf", plot = P1, width = 6, height = 5, units = "in")





       