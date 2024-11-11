library(tidyverse)

ggplot(data = diamonds,
       mapping = aes(x = cut)) +
  geom_bar()

ggplot(data = diamonds,
       mapping = aes(y = cut)) +
  geom_bar()



# count -------------------------------------------------------------------

diamonds <- diamonds

diamonds_cut <- diamonds |> 
  count(cut)




# colorful bars -----------------------------------------------------------

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = cut)) +
  geom_bar()


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = cut)) +
  geom_bar(show.legend = F)

# clarity
# a measurement of how clear the diamond is (I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best))


# stacked bar chart
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar()


# 100% stacked bar chart
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "fill")

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion")

# clustered bar charts
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "dodge")


# stacked bar chart
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "stack")




# classwork - distribution plots ------------------------------------------

flights <- nycflights13::flights

# q1a
# Provide ggplot() code to describe 
# the distribution of air_time (amount of time spent in the air, in minutes).



ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram()


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(bins = 100)


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_boxplot()



# q1b
# Provide ggplot() code to describe 
# how the distribution of air_time varies by origin.


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(color = "blue")


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(color = "blue")


ggplot(data = flights,
       mapping = aes(x = air_time,
                     color = origin)) +
  geom_histogram()

ggplot(data = flights,
       mapping = aes(x = air_time,
                     fill = origin)) +
  geom_histogram()



ggplot(data = flights,
       mapping = aes(x = air_time,
                     fill = origin)) +
  geom_histogram(show.legend = F) +
  facet_wrap(~origin)

ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(show.legend = F) +
  facet_wrap(~origin)


# q1c
# Find the top 5 carriers in terms of the number of flights.





# q1d
# Create the data.frame, top5_carriers, 
# which includes all the flights operated by 
# only the top 5 carriers found in Q1c.




# q1e
# Provide ggplot() code to describe 
# the distribution of carrier 
# using the top5_carriers data.frame.



# q1f
# Provide ggplot() code to describe 
# how the distribution of carrier varies by origin 
# using the top5_carriers data.frame.







