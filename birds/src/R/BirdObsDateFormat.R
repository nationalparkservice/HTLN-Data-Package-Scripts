
library(tidyverse)

birdobs <- read_csv("src/BirdObservationsThru2022_3.csv")

glimpse(birdobs)


# look at unique comments

birdobs |>  
  select(EventDateTime) |> 
  distinct(EventDateTime) |>
  print(n = 909)

typeof(birdobs$EventDateTime)

birdobs |>
          mutate(
            EventDateTime2 = as.character(EventDateTime),
            EventDateTime3 = str_replace_all(EventDateTime2, " ", "T")
            ) |>
          select(EventDateTime, EventDateTime2, EventDateTime3)


















myvector2[1]


myvector3 = c(myvector2[1], "T", myvector2[2])

myvector3














#-----------=====

x <- 1:7
# access 3rd element
x[3]    
# access 2nd and 4th element
x[c(2, 4)]     
# access all but 1st element
x[-1]          
# cannot mix positive and negative integers
x[c(2, -4)]

  