
library(tidyverse)

birdobs <- read_csv("src/BirdObservationsThru2022_3.csv")

glimpse(birdobs)


# look at unique comments

birdobs |>  
  select(EventDateTime) |> 
  distinct(EventDateTime) |>
  print(n = 909)

typeof(birdobs$EventDateTime)

birdobs2 <- birdobs |>
              mutate(
                EventDateTime2 = as.character(EventDateTime),
                EventDateTime = str_replace_all(EventDateTime2, " ", "T")
                ) 

birdobs3 <- birdobs2 |> mutate(EventDateTime2 = NULL)

glimpse(birdobs3)

write_csv(birdobs3, "src/BirdObservationsThru2022_3c.csv")
