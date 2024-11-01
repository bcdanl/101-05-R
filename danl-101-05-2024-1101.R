library(tidyverse)
library(gapminder)

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point(alpha = .5) +
  geom_smooth()

ggplot(data = gapminder,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point(alpha = .5) +
  geom_smooth(method = "lm")
