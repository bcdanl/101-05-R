library(tidyverse)

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() + 
  geom_smooth()

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() + 
  geom_smooth(method = "lm")


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() + 
  geom_smooth(method = "lm") +
  geom_smooth()
  
nrow(mpg)


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0.33) + 
  geom_smooth(method = "lm")



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0) + # full transparency
  geom_smooth(method = "lm")


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 1) + # no transparency
  geom_smooth(method = "lm")


ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = displ)) +
  geom_point(alpha = .33) +
  geom_smooth(method = "lm")



# classwork 9 - Q1 --------------------------------------------------------

df <- read_csv("http://bcdanl.github.io/data/icecream-drowning.csv")

ggplot(data = df,
       mapping = aes(x = IceCreamSales,
                     y = DrowningIncidents)) +
  geom_point() +
  geom_smooth()
  
  








