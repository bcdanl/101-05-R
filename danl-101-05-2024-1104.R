# install.packages("ggthemes")
library(ggthemes)
library(tidyverse)


ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3)



ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3) +
  scale_color_colorblind()

ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3) +
  scale_color_tableau()

ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3) +
  theme_wsj()


ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) +
  facet_wrap(~continent,
             nrow = 3)


ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) +
  facet_wrap(~continent,
             ncol = 2,
             nrow = 2) # error

ggplot(data = gapminder,
       mapping = aes(
         x = log10(gdpPercap),
         y = lifeExp
       )) +
  geom_point(alpha = .4) +
  facet_wrap(~continent, 
             scales = "free")


ggplot(data = gapminder,
       mapping = aes(
         x = log10(gdpPercap),
         y = lifeExp
       )) +
  geom_point(alpha = .4) +
  facet_wrap(~continent)



ggplot(data = gapminder,
       mapping = aes(
         x = log10(gdpPercap),
         y = lifeExp
       )) +
  geom_point(alpha = .4) +
  facet_wrap(~continent,
             scales = "free")



# classwork - color vs. facet ---------------------------------------------

library(tidyverse)
nbc_show <- read_csv("https://bcdanl.github.io/data/nbc_show.csv")

# Q1a. 
# Provide ggplot() code to describe the relationship between GRP and PE.

ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +
  geom_smooth() +
  geom_smooth(method = "lm",
              color = "darkorange")
  

# Q1b.
# Provide ggplot() code to describe how 
# the relationship between GRP and PE varies by Genre.

# color
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE,
                     color = Genre)) +
  geom_point() +
  geom_smooth(se = F) + 
  geom_smooth(method = "lm",
              se = F)







