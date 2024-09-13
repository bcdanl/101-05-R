library(tidyverse)

# functions ---------------------------------------------------------------

str_c("Data", "Analytics")

str_c("Analytics", "Data")

str_c("Data", "Analytics", sep = "!")

str_c("Data", "Analytics", sep = " ")


str_c("Data", "Analytics")
str_c("Data", "Analytics", sep = "")


# vectorized operation ----------------------------------------------------


a <- c(1, 2, 3, 4, 5)
b <- c(5, 4, 3, 2, 1)

a + b
a - b
a * b

a / b

1/5
2/4
3/3
4/2
5/1

a * b
sqrt(a)




# measure of centrality ---------------------------------------------------

# mode could be multiple values

c(1,1,1,
  2,
  3,3,
  4,
  5,
  6,6,
  7,7,7)


