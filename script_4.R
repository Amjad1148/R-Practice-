library(nycflights13)
library(tidyverse)
flights
df <- nycflights13::flights


library(dplyr)
glimpse(df)  # for summary


# iris example
data("iris"
)
iris %>% 
  group_by(Species) %>%
  summarise(avg = mean(Petal.Length)) %>%
  arrange(avg)

# flights data
df %>% 
  group_by(carrier) %>% 
  summarise(add = sum(hour)) %>%  #pipe operator is used to continue a process
  arrange(add)



# Sub-setting of data

df1 <- df %>% select(year, month, day)

# You can also arrange th e columns in order just by changing the name place as 1st, 2nd etc.


df2 <- df %>% select(year, month, day) %>% filter(month == 1)

df %>% select(year:arr_time)


df %>% rename(depature_time = dep_time)



# difference between wide and long format


df %>%  arrange(arr_time)
arr_time <- df %>%  arrange(arr_time)   # Ascending Order


arr_time1 <- df %>%  arrange(desc(arr_time)) 

df %>% distinct(flight)









data("iris")


#PCA
x <- prcomp(iris[ , -5], center = TRUE, scale. = TRUE)
print(x)
summary(x)

#ggplot2 grouping
iris <- cbind(iris, x$x)

ggplot(iris, aes(PC1, PC2, colour = Species, fill = Species)) + 
  stat_ellipse(geom = "polygon", colour = "black", alpha = 0.5)+
  geom_point(shape = 21, colour = "black")


#PCA plot
install.packages("factoextra")
install.packages("FactoMineR")
library(factoextra)
library(FactoMineR)




# PCA table

iris.pca <- PCA(iris[ , -5], graph = TRUE,scale.unit = TRUE)



# Screeplot

fviz_eig(iris.pca, addlabels = T)
fviz_eig(iris.pca, addlabels = T, ylim = c(0, 50))

# PCA Plot
fviz_pca_var(iris.pca, col.var = "cos2",
             gradient.col = c("black", "blue", "green", "red"),
                              repel = TRUE)+
  labs(title = "PCA of Parameters", x = "PC1 (49%)", y = "PCA2 (23%)",
colour = "cos2")


ggsave("PCA.pdf", units = "in", width = 6.5, height = 5.5)




