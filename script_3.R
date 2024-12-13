data("mpg")
data("iris")
View(iris)
df <- iris


#How to save data frames to excel format
install.packages("writexl", dependencies = T)
library(writexl)
write_xlsx(df, "iris.xlsx")


#import excel file
install.packages("readxl", dependencies = T)
library(readxl)



df <- read_excel("iris.xlsx")
View(df)
remove(df)


#plotting in ggplot2
library(ggplot2)
ggplot(data = df, mapping = aes(x = Sepal.Length, y=Sepal.Width, colour = Species))+
  geom_point() + facet_wrap(~Species) + theme_bw()+ theme(panel.grid = element_blank()) +  # removing grid
  labs(title = "Comparison Plot", x = "Hight", y = "Weight", colour = "Legends") + 
  theme(strip.background = element_rect(fill = "lightblue")) + #Strip colour
  theme(strip.text = element_text(colour = "red")) + # strip text colour
  




# How to change facet_labels?
# How to colour facet_labels rectangle?
#How to remove grid lines in the plot?

# data transformation
# 

install.packages("nycflights13", dependencies = T)
library(nycflights13)
library(tidyverse)
flights
df <- nycflights13::flights
ggplot(data = df, mapping = aes(x = year, y= flight, colour = origin))+
  geom_point() + facet_wrap(~origin)

View(df)
summary(df)

#Filter
filter(df, month==1, day==1)

jan <- filter(df, month==1)
ggplot(jan_feb_march_april_may_june, mapping = aes(x = dep_delay, y = carrier, colour = flight)) + 
  geom_point() + theme_classic()





feb <- filter(df, month==2)
march <- filter(df, month==3)
april <- filter(df, month==4)
may <- filter(df, month==5)
june <- filter(df, month==6)



#Checking Number of rows
nrow(jan)
nrow(feb)
nrow(april)
nrow(may)
nrow(june)

#Checking number of columns
ncol(jan)
ncol(feb)
ncol(march)
ncol(april)
ncol(may)
ncol(june)

#saving in excel 
write_xlsx(jan, "jan.xlsx")
write_xlsx(feb, "feb.xlsx")
write_xlsx(march, "march.xlsx")
write_xlsx(april, "april.xlsx")
write_xlsx(may, "may.xlsx")
write_xlsx(june, "june.xlsx")

#fetching multiple months data 

jan <- filter(df, month==1, day==1, carrier=="UA")
jan <- filter(df, month==1)


jan_feb_march <- filter(df, month %in% c(1, 2, 3))
jan_feb_march_april <- filter(df, month %in% c(1, 2, 3, 4))
jan_feb_march_april_may <- filter(df, month %in% c(1, 2, 3, 4, 5))
jan_feb_march_april_may_june <- filter(df, month %in% c(1, 2, 3, 4, 5, 6))


filter(df, arr_delay > 120 & arr_delay <300)

filter(df, arr_delay > 120:300)




#Select Function?








