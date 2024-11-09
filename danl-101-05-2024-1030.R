library(tidyverse)
df <- read_csv("http://bcdanl.github.io/data/icecream-drowning.csv")

ggplot(data = df,
       mapping = aes(x = IceCreamSales,
                     y = DrowningIncidents)) +
  geom_point() +
  geom_smooth() 


ggplot(data = df,
       mapping = aes(x = Month,
                     y = IceCreamSales)) +
  geom_point()

ggplot(data = df,
       mapping = aes(x = Month,
                     y = DrowningIncidents)) +
  geom_point()



# gapminder ---------------------------------------------------------------

# install.packages("gapminder")
library(gapminder)

gapminder <- gapminder
gapminder <- gapminder::gapminder


ggplot(data = gapminder,
       mapping = aes(x = gdpPercap,
                     y = lifeExp) ) + # case-sensitive
  geom_point() +
  geom_smooth()


ggplot(data = gapminder,
       mapping = aes(x = gdpPercap,
                     y = lifeExp) ) + # case-sensitive
  geom_point(alpha = 0.2) +
  geom_smooth()




# aesthetic mappings ------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = class)) +
  geom_point()


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy
                     )) +
  geom_point(color = "blue",
             size = 3)


