library(tidyverse)
mpg <- ggplot2::mpg
?mpg


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point()

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_smooth()
  

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth()
  
  

