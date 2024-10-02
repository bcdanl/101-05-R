library(tidyverse)
library(nycflights13)


# classwork - filter() ----------------------------------------------------

# Find all flights that had an arrival delay of 
# two or more hours
  # arr_delay

q1a <- flights |> 
  filter(arr_delay >= 120)


# Find all flights that flew to Houston (IAH or HOU)
  # dest
q1b <- flights |> 
  filter(dest == "IAH" | dest == "HOU")

nrow(q1b) / 365

# Find all flights that departed in summer (July, August, and September)
  # month
q1c <- flights |> 
  filter(month == 7 | month == 8 | month == 9)



# Find all flights that arrived more than two hours late, 
# but didn’t leave late
  # arr_delay, dep_delay
q1d <- flights |> 
  filter(arr_delay >= 120 & dep_delay <= 0)



# Find all flights that departed between midnight and 6am (inclusive)
  # dep_time
q1e <- flights |> 
  filter( (dep_time <= 600 & dep_time >= 1) |
            dep_time == 2400 )


