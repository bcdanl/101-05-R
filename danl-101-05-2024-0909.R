library(tidyverse)


# assignment --------------------------------------------------------------

# option + - 
# Alt + -
a <- 1


# Data Types --------------------------------------------------------------

# class() checks data type
# integer
class(a)

# logical
TRUE
FALSE


class(FALSE)

orig_number <- 4.39898498
class(orig_number)
mod_number <- as.integer(orig_number)
class(mod_number)

number_2 <- 4.75
number_2_int <- as.integer(number_2)

b <- 1
b_int <- as.integer(b)


# TRUE converts to 1; FALSE does to 0.
as.numeric(TRUE)
as.numeric(FALSE)

# NA, Not Available
as.numeric("a")




# character ---------------------------------------------------------------

# anything that is quoted is character
# ""
# ''
myname <- "Byeong-Hak Choe"
class(myname) # returns the data **type** of an object.

mynumber <- "40"
class(mynumber)

"my_number"



# command + shift + R: to insert section
# logical -----------------------------------------------------------------

favorite.numeric <- as.numeric(8.8)

# == tests for mathematical equality
favorite.numeric == 8.8
favorite.numeric == 9.9

# < 
# >
favorite.numeric > 10
favorite.numeric < 10


logical_condition <- favorite.numeric == 8.8

class(favorite.numeric == 8.8)




# vector ------------------------------------------------------------------

a <- 1:10  # colon operator
b <- c("3", 4, 5)


beers <- c("BUD LIGHT", 
           "BUSCH LIGHT", 
           "COORS LIGHT", 
           "MILLER LITE", 
           "NATURAL LIGHT")


class(a)
class(b)
class(beers)



# factor ------------------------------------------------------------------

beers_fct <- as.factor(beers)
beers_fct

ton_of_beers <- c("BUD LIGHT", 
                  "BUD LIGHT", 
                  "BUD LIGHT", 
                  "BUD LIGHT", 
                  "BUD LIGHT", 
                  "BUSCH LIGHT",
                  "BUSCH LIGHT", 
                  "COORS LIGHT", 
                  "COORS LIGHT", 
                  "MILLER LITE",
                  "MILLER LITE",
                  "MILLER LITE", 
                  "NATURAL LIGHT")
length(ton_of_beers_fct)

ton_of_beers_fct <- as.factor(ton_of_beers)
ton_of_beers_fct

# number of levels in factor 
nlevels(ton_of_beers_fct)

bio_gender <- c("Female", "Male", "Male", "Male", "Female")
bio_gender_fct <- as.factor(bio_gender)
nlevels(bio_gender_fct)




# workflow  -----------------------------------------------------

x <- "hello" # needed to fix this bug

x <- "hello"


