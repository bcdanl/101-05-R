
# classwork 1 -------------------------------------------------------------


# q1 ----------------------------------------------------------------------

state.name

# variable_name <- R object
# Wrong: R object <- variable

US_states <- state.name



# ctrl + enter
# ctrl + shift + C
# ctrl + shift + R

# q2 ----------------------------------------------------------------------

temp_F <- c(35, 88, 42, 84, 81, 30)
temp_C <- (5/9)*(temp_F - 32) # temp_F must exist in the envrionment



# q3 ----------------------------------------------------------------------

# sum()
# mean()
# ^2

x <- 1:25
diff <- x - mean(x)
diff^2
sum(diff^2)

# length(x): the number of elements in a vector x
var_x <- sum(diff^2) / (length(x) - 1)
sd_x <- sqrt(var_x)

sd(x)
sd_x == sd(x)




# q4 ----------------------------------------------------------------------

my_vec <- c(-10, -20, 30, 10, 50, 40, -100)
beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "GENESEE LIGHT", "MILLER LITE", "NATURAL LIGHT")


# highly not recommended
my_vec[3:6]

# highly recommended
is_positive <- my_vec > 0
my_vec[ is_positive ]

beers[2]
beers[4]
beers[6]

beers[c(2,4,6)]



# q5 ----------------------------------------------------------------------

library(tidyverse)

pathname <- "https://bcdanl.github.io/data/mlb_teams.csv"
MLB_teams <- read_csv(pathname)




# q6 ----------------------------------------------------------------------

library(skimr)
skim(MLB_teams)

MLB_teams_sum <- skim(MLB_teams)

summary(MLB_teams)
sd(MLB_teams)


summary(MLB_teams)
# $ operator extracts a vector from data.frame
sd(MLB_teams$HR)





# classwork - R basics II -------------------------------------------------


# q1 ----------------------------------------------------------------------


numbers <- 10:50
numbers <- as.numeric(numbers)



# q2 ----------------------------------------------------------------------

ages <- c(15, 22, 18, 24, 30)


logical_vec <- ages >= 20

ages >= 20
# ages < 20

# less than or equal to
# <=


# q3 ----------------------------------------------------------------------

# “Hello, World!”
# ""

greeting <- "Hello, World!"
greeting



# q4 ----------------------------------------------------------------------



temp <- c(22, 28, 31, 25, 29)

range <- max(temp) - min(temp)



# q5 ----------------------------------------------------------------------

char_vec <- c("1", "2", "3", "4")
num_vec <- as.numeric(char_vec)



# q6 ----------------------------------------------------------------------

library(tidyverse)

first_names <- c("John", "Jane")
last_names <- c("Doe", "Smith")

str_c(first_names, last_names, sep = " ")
