library(tidyverse)
library(nycflights13)

flights <- flights

top5_n <- flights |> 
  count(carrier) |> 
  arrange(-n) |> 
  head(5)



top5_carriers <- flights |> 
  filter(carrier == "UA" |
           carrier == "B6" |
           carrier == "EV" |
           carrier == "DL" |
           carrier == "AA" ) 

nrow(top5_carriers) / nrow(flights)



# q1e
# install.packages("ggthemes")
library(ggthemes)
ggplot(data = top5_carriers,
       mapping = aes(y = carrier,
                     fill = carrier)) +
  geom_bar(show.legend = F) +
  scale_fill_colorblind()




# q1f

# stacked bars
ggplot(data = top5_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar() +
  scale_fill_colorblind()




