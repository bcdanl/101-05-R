library(tidyverse)
library(nycflights13)

flight_airline <- left_join(flights, airlines)

flight_airline <- 
  flights |> 
  left_join(airlines)



# data transformation with r ----------------------------------------------

# DATA.FRAME |> filter(LOGICAL_CONDITIONS) |> 
  # arrange() |> 
  # select()


# load nycflights13 package

# install.packages("nycflights13")
library(nycflights13)

flights <- nycflights13::flights
??flights

airlines


jan1 <- flights |> 
  filter(month == 1, day == 1)

# nrow(data.frame): number of observations in data.frame
nrow(jan1)


# Christmas Flights
dec25 <- flights |> 
  filter(month == 12, 
         day == 25)

flights$month
flights$month == 1
class(flights$month == 1) # logical



# logical operations ------------------------------------------------------

jan_1 <- flights |> 
  filter(month == 1 & day == 1)

jan1_day1 <- flights |> 
  filter(month == 1 | day == 1)

not_jan <- flights |> 
  filter( !(month == 1) )

# nrow(not_jan) + nrow(jan1) == nrow(flights)
nrow(not_jan) + nrow(jan1)
nrow(flights)

notjan <- flights |> 
  filter( month != 1 )


flight_since_july <- flights |> 
  filter(month >= 7)

df <- data.frame(
  num = c(8, 9, 10, 11),
  chr = c("A", "C", "B", "A"))

df |> filter(num > 8 & num < 11)
df |> filter(num > 8, num < 11)
df |> filter(num < 10, chr == "A")
df |> filter(num < 10 | chr == "A")
