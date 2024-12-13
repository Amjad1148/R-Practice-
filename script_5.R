diamonds
ggplot(data = diamonds, mapping = aes(x = carat, y = price, col = cut)) +
  geom_point()



View(df)
install.packages("dplyr")
library(dplyr)
library(ggplot2)
colnames(df)


ggplot(data = df, mapping = aes(x = hour, y = arr_delay, col = carrier)) +
  geom_point()

# Correlation Plots

# to check normal distribution 
hist(df$distance)
ggsave("hist_plot.pdf")
qqnorm(df$distance)

ggsave("qqmorm_plot.pdf")



shapiro.test(df$distance)




# data generate
normal_data <- rnorm(200)
hist(normal_data, col = "lightblue")
ggsave("normal_data.pdf")

qqnorm(normal_data, col = "red")
ggsave("normal_data1.pdf")


shapiro.test(normal_data)


# to make data correct   log transformation, sequare root transformation,  cube root 
# transformation, scaling transformation, mini

# Correlation plots
#corrplot
install.packages("corrplot", dependencies = T)
library(corrplot)


df <- mtcars
m <- cor(df)

#specify method
m <- cor(df, method = "pearson")
?cor
corrplot(m)

corrplot(m, method = "number", order = "alphabet")

corrplot(m, method = "shade", order = "alphabet")
corrplot(m, method = "shade", order = "alphabet", type = "upper")
corrplot.mixed(m, lower = "pie", upper = "ellipse")



#clustring
corrplot(m, order = "hclust", addrect = 2)

