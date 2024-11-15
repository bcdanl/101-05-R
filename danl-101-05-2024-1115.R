library(tidyverse)


# proportion bar chart ----------------------------------------------------

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     y = after_stat(prop),
                     group = 1)) +
  geom_bar()


# what happens without group = 1

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     y = after_stat(prop)
       )) +
  geom_bar()




# geom_col() --------------------------------------------------------------
mpg <- mpg

df_mpg <- mpg |> 
  count(class)

ggplot(data = df_mpg,
       mapping = aes(y = class,
                     x = n)) +
  geom_col()


# error
ggplot(data = df_mpg,
       mapping = aes(y = class,
                     x = n)) +
  geom_bar()


ggplot(data = df_mpg,
       mapping = aes(y = class)) +
  geom_bar()





# sorted bar chart --------------------------------------------------------


ggplot(data = df_mpg,
       mapping = aes(y = class,
                     x = n)) +
  geom_col()


ggplot(data = df_mpg,
       mapping = aes(x = n,
                     y = fct_reorder(class, n))) +
  geom_col()




ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class)) +
  geom_boxplot()

ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = fct_reorder(class, hwy))) +
  geom_boxplot() 




# classwork - dist --------------------------------------------------------


# stacked bars
ggplot(data = top5_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar() +
  scale_fill_colorblind()

ggplot(data = top5_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "fill") +
  scale_fill_colorblind()

ggplot(data = top5_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge2") +
  scale_fill_colorblind()

ggplot(data = top5_carriers,
       mapping = aes(y = carrier)) +
  geom_bar() +
  facet_wrap(~origin) 




# q1g

top5_n <- flights |> 
  count(carrier) |> 
  arrange(-n) |> 
  head(5)

ggplot(data = top5_n,
       mapping = aes(x = n,
                     y = carrier,
                     )) +
  geom_col()




ggplot(data = top5_n,
       mapping = aes(x = n,
                     y = fct_reorder(carrier, n),
       )) +
  geom_col()



carrier_per_origin <- flights |> 
  count(origin, carrier) |> 
  arrange(carrier, -n)





