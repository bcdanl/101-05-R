
# NA, missing value -------------------------------------------------------


NA > 5
10 == NA
NA + 10
NA / 2
(1 + NA + 3) / 3

x <- c(1, NA, 3)
mean( x )
sd( x )

skimr::skim(x)
(1 + 3 ) / 2


x <- NA
y <- NA
x == y


x <- NA
is.na(x)

y <- "missing"
y
is.na(y)


v1 <- c(1, NA, 3)
is.na(v1) # is v1 NA?

df <- data.frame(v1 = c(1, NA, 3),
                 v2 = c(1, 2, 3))

library(tidyverse)

# Keep observations with missing values in variable v1
df |> 
  filter( is.na(v1) )


# Keep observations with non-missing values in variable v1
df |> 
  filter( !is.na(v1) )



# arrange() ---------------------------------------------------------------

library(nycflights13)
flights <- nycflights13::flights

# sort observations by variable `dep_delay` in ascending order
df_arranged <- flights |> 
  arrange(dep_delay)

# sort observations by variable `dep_delay` in descending order
df_arranged_desc <- flights |> 
  arrange( desc(dep_delay) )

# sort observations by numeric variable `dep_delay` in descending order
  # this is possible only for numeric variables
df_arranged_desc <- flights |> 
  arrange( -dep_delay )





