library(tidyverse)
titanic <- 
  read_csv(
    "https://bcdanl.github.io/data/titanic_cleaned.csv")


ggplot(data = titanic,
       mapping = aes(x = age)) +
  geom_histogram()

ggplot(data = titanic,
       mapping = aes(x = age)) +
  geom_histogram(binwidth = 2,
                 fill = "lightblue",
                 color = 'black')



# boxplot -----------------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(x = class,
                     y = hwy)) +
  geom_boxplot()
  


ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class)) +
  geom_boxplot()

library(ggthemes)

ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = class,
                     fill = class)) +
  geom_boxplot(show.legend = F) +
  scale_fill_tableau()


# sorted boxplot
ggplot(data = mpg,
       mapping = aes(x = hwy,
                     y = fct_reorder(class, hwy),
                     fill = class)) +
  geom_boxplot(show.legend = F) +
  scale_fill_tableau() +
  labs(y = "Class",
       x = "Highway MPG")



# bar charts --------------------------------------------------------------
diamonds <- diamonds

ggplot(data = diamonds,
       mapping = aes(x = cut)) +
  geom_bar()










