
library(tidyverse)
df <- data.frame(
  v1 = c("USA", "Korea", "USA"),
  v2 = c("D.C.", "Seoul", "D.C."),
  v3 = c("Georgetown", "Gangnam", 
         "Georgetown") 
)

# Remove duplicate observations
df |> 
  distinct()


library(nycflights13)

flights_unique <- flights |> distinct()
flights <- flights

nrow(flights_unique) == nrow(flights)

df <- flights |> 
  distinct(origin, dest)


# select() ----------------------------------------------------------------

flights |> 
  select(year, month, day)

flights |> 
  select(-year)



# rename() ----------------------------------------------------------------

df <- flights |> 
  rename(tail_num_plane_id_whatever = tailnum)




# classwork 4 - filter with NA, arrange(), distinct()  -------------------------

# How many flights have a missing `dep_time`?
q2 <- flights |> 
  filter( is.na(dep_time) )
nrow(q2)

# Sort flights to find the most delayed flights.
q3 <- flights |> 
  arrange(desc(dep_delay))

# some flight from HA airline


# Was there a flight on every day of 2013?
flights |> 
  distinct(year)

q4 <- flights |> 
  distinct(month, day)

nrow(q4)


# classwork - select() and rename() ---------------------------------------

nyc_payroll_new <- read_csv("https://bcdanl.github.io/data/nyc_payroll_2024.csv")


# 1
# Create a new data.frame, df_I_wANT that keeps only the following five variables—
# Fiscal_Year, Agency_Name, First_Name, Last_Name, and Base_Salary
# —from the data.frame nyc_payroll_new.

df_I_wANT <- nyc_payroll_new |> 
  select(Fiscal_Year, Agency_Name, First_Name, 
         Last_Name, Base_Salary)


# 2
# Given the data.frame df with a variable named `Agency_Name`, 
# how would you rename it to `Agency`?

df <- df |> 
  rename(Agency = Agency_Name)


# 3
# How would you remove the `Fiscal_Year` variable using select()?
df <- df |> 
  select(-Fiscal_Year)

  
  


