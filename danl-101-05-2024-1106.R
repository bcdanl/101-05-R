library(tidyverse)
library(ggthemes)

path <- 
  "https://bcdanl.github.io/data/nvda_2015_2024.csv"
nvda <- read_csv(path)

ggplot( data = nvda,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_point(size = .5)



ggplot( data = nvda,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_point(size = 1) + 
  geom_line()



tech_october <- 
  read_csv(
    "https://bcdanl.github.io/data/tech_stocks_2024_10.csv"
  )

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_point()  + 
  geom_line() 



ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          color = Ticker) ) + 
  geom_line() +
  scale_color_colorblind()


ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          linetype = Ticker) ) + 
  geom_line() 



ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          linetype = Ticker,
          color = Ticker) ) + 
  geom_line(size = 2) +
  scale_color_colorblind()



# classwork - time trend plots --------------------------------------------

library(gapminder)
df_gapminder <- gapminder::gapminder

# Provide ggplot() code to describe 
  # the time trend of GDP per capita (gdpPercap).
  # How would you take into account country-level data structure?

ggplot(data = df_gapminder,
       mapping = 
         aes(x = year,
             y = gdpPercap)) +
  geom_point() +
  geom_line()


ggplot(data = df_gapminder,
       mapping = 
         aes(x = year,
             y = gdpPercap,
             color = country)) +
  geom_point() +
  geom_line()


ggplot(data = df_gapminder,
       mapping = 
         aes(x = year,
             y = gdpPercap,
             group = country)) +
  geom_point() +
  geom_line()




# Provide ggplot() code to describe 
  # how the overall time trend of GDP per capita (gdpPercap) 
  # varies by continent.


df_sum <- df_gapminder |> 
  count(country)


ggplot(data = df_gapminder,
       mapping = 
         aes(x = year,
             y = gdpPercap,
             group = country)) +
  geom_point() +
  geom_line() +
  geom_smooth() +
  facet_wrap(~continent)




ggplot(data = df_gapminder,
       mapping = 
         aes(x = year,
             y = gdpPercap)) +
  geom_point() +
  geom_line() +
  geom_smooth() +
  facet_wrap(~continent)




ggplot(data = df_gapminder,
       mapping = 
         aes(x = year,
             y = gdpPercap)) +
  geom_point() +
  geom_line(mapping = aes(group = country)) +
  geom_smooth() +
  facet_wrap(~continent)




ggplot(data = df_gapminder,
       mapping = 
         aes(x = year,
             y = log10(gdpPercap))) +
  geom_line(mapping = aes(group = country),
            color = "grey") +
  geom_smooth() +
  facet_wrap(~continent)






