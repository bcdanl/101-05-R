x <- c(1,2,3,4,5)
var(x)
sd(x)

y <- 1:100
var(y)
sd(y)


income <- c(100000, 125000, 200000, 75000, 90000)
var(income)
sd(income)


# quartiles ---------------------------------------------------------------

quantile(x)
quantile(x, 0)
quantile(x, 0.25)
quantile(x, 0.5)
quantile(x, 0.75)
quantile(x, 1)

quantile(x, 1.5)

quantile(x, 0.2)



# read CSV files ----------------------------------------------------------

library(tidyverse)

custdata <- read_csv("data/custdata_rev.csv")

getwd()

# abs. pathname
custdata <- read_csv("/cloud/project/data/custdata_rev.csv")


View(custdata)

class(custdata)
dim(custdata)
nrow(custdata)
ncol(custdata)

summary(custdata)


# skimr package -----------------------------------------------------------

# install.packages("skimr")
library(skimr)
skim(custdata)

# or this
skimr::skim(custdata)


