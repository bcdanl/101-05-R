x <- data.frame(
  key = c(1, 2, 3),
  val_x = c('x1', 'x2', 'x3')
)

y <- data.frame(
  key = c(1, 2, 4),
  val_y = c('y1', 'y2', 'y3')
)


z <- data.frame(
  key = c(2, 3, 4),
  val_z = c('z1', 'z2', 'z3')
)




xyz <- x |> 
  left_join(y) |> 
  left_join(z)
  

xy <- x |> 
  left_join(y)
xyz <- xy |> 
  left_join(z)




# classwork - join --------------------------------------------------------

# question 1
install.packages("nycflights13")
library(nycflights13)

# question 2
flights

airlines

flight_airline <- flights |> 
  left_join(airlines)


  


