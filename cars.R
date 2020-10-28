# Title
# Name
# Date
# Description (i.e. what kind of data?
# what is the research question being asked here?)

# Data From:
# https://www.kaggle.com/??????????

# load packages
library(tidyverse)
library(rio)
library(scales)
library(GGally)
library(bayesplot)
library(rstanarm)

# load the data

cars <- read_csv("carfuel.csv")

# explore

glimpse(cars)
summary(cars$on_highway)

# SPLOM (Scatter plot matrix) but with proper data types:
cars %>%

    cars <- read_csv("carfuel.csv")

# explore
glimpse(cars)
summary(cars$on_highway)

# SPLOM (Scatter plot matrix) but with proper data types:
cars %>%
  select(-num, -model, -manufacturer) %>%
  ggpairs()

ggplot()

# Analysis on city v
summary(cars$on_city)
#qplot(on_city, data=cars, geom="histogram", bins=30)
summary(cars$on_city)
#qplot(on_city, data=cars, geom="histogram", bins=30)
ggplot()


ggplot()



table(cars$cylinders)
qplot(cylinders,
      data = cars,
      geom = "bar",
      fill = factor(cylinders))
ggplot()

# Analysis on Fuel types
qplot(fl,
      data = cars,
      geom = "bar",
      fill = fl)
ggplot()

# Analysis Vehicle kind
table(cars$size)
#qplot(size, data=cars, geom="bar", fill=size)
ggplot()

# engine in highway
ggplot(cars, aes(engine, on_highway)) +
  geom_point(color = "#cb181d",
             alpha = 0.4,
             shape = 16)

# by size
ggplot(cars, aes(engine, on_highway, color = size)) +
  geom_point()

# By plot:
ggplot(cars, aes(engine, on_highway)) +

  table(cars$cylinders)
qplot(cylinders, data=cars, geom="bar", fill=factor(cylinders))
ggplot()

# Analysis on Fuel types
qplot(fl, data=cars, geom="bar", fill=fl)
ggplot()

# Analysis Vehicle kind
table(cars$size)
#qplot(size, data=cars, geom="bar", fill=size)
ggplot()

# engine in highway
ggplot(cars, aes(engine, on_highway)) +
  geom_point(color = "#cb181d", alpha = 0.4, shape = 16)

# by size
ggplot(cars, aes(engine, on_highway, color = size)) +
  geom_point()

# By plot:
ggplot(cars, aes(engine, on_highway)) +
  geom_point() +
  facet_wrap(~ size, nrow = 2)



# Type of size
ggplot(data = cars) +
  geom_smooth(mapping = aes(
    x = engine,
    y = on_highway,
    linetype = ,
    color = size
  ))

#Analysis of kg/l compared to engine
plot(
  on_highway ~ engine,
  data = cars,
  col = "blue",
  pch = 20,
  cex = 1.5
)

#  engine in highway km
ggplot(cars, aes(engine, on_highway)) +
=======
# Type of drive
ggplot(data = cars) +
  geom_smooth(mapping = aes(x = engine, y = on_highway, linetype = , color=drive))

#Analysis of kg/l compared to engine
plot(on_highway ~ engine, data = cars, col = "blue", pch = 20, cex = 1.5)

#  engine in highway km
ggplot(cars, aes(engine, on_highway)) +
  geom_point(alpha = 0.3) +
  geom_smooth()


# Number of cylinders
ggplot(data = cars) +
  geom_point(mapping = aes(x = engine, y = on_highway, color = size)) +
  facet_grid(size ~ cylinders)

ggplot(data = cars) +
  geom_point(mapping = aes(x = engine, y = on_highway, color=drive)) +
  facet_grid(drive ~ cylinders)




#kg/l in highway

hist(cars$on_highway, main = "Driving on highways",
     xlab = ", kg/l")

#kg/l in city
hist(cars$on_city, main = "Driving on City",
     xlab = "kilograms per liters, kg/l")

#Highway kg/l data
cars = lm(on_highway ~ cylinders + year, data = cars)
coef(cars)

#City kg/l data
cars = lm(on_city ~ cylinders , data = cars)
coef(cars)

#summary
summary(automatic$on_city)
summary(manual$on_city)


hist(cars$on_highway, main = "Driving on highways",
     xlab = ", kg/l")

#kg/l in city
hist(cars$on_city, main = "Driving on City",
     xlab = "kilograms per liters, kg/l")

#Highway kg/l data
cars = lm(on_highway ~ cylinders + year, data = cars)CPCOLS <- c("#1f78b4", "#33a02c", "#e31a1c")

library(ggplot2)

ggplot(iris, aes(Sepal.Length, Petal.Length)) +
      geom_point(aes(col = Species)) +
      scale_colour_manual(values = CPCOLS)
coef(cars)

#City kg/l data
cars = lm(on_city ~ cylinders + year, data = cars)
coef(cars)

#summary
summary(automatic.on_city)
summary(manual.on_city)

