#Data Visualization Chapter

library(tidyverse)

mpg <- ggplot2::mpg #Loading mpg data frame

#Making basic scatter plot
ggplot(data =mpg) + geom_point(mapping = aes(x = displ, y = hwy))

#Basic template
# ggplot(data = <DATA>) + 
#   <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

#Adding color aes to plot
ggplot(data =mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

#Can also add a shape aes as well

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#Split plot into facets
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
#To make a grid with two variables
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

#Geom smooth plot
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))
#Can add things to aes like linetype
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

#You can also include mappings in ggplot line and it will be passed to geoms
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()


#Can use boxplots to show distribution of data, this type of geom creates new count data
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut))


