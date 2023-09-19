
library(tidyverse)

birdobs <- read_csv("src/BirdObservationsThru2022_3.csv")

glimpse(birdobs)


# look at unique comments

birdobs |>  
  select(Comments) |> 
  distinct(Comments) |>
  print(n = 909)


# try search for a special character "@"

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "@"))

# replace @ with ' at '
birdobs <- birdobs |>  
  mutate(
    Comments = str_replace_all(Comments, "@", "at"))

# check for @ after mutate

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "heard at creek crossing"))

# pass Comments2 to Comments1 in birdobs

# look for other special chars

birdobs |>  
  select(Comments) |> 
  distinct(Comments) |>
  print(n = 909)

# try search for a special character "~"

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "~"))

# replace ~  with 'ca.'
birdobs <- birdobs |>  
  mutate(
    Comments = str_replace_all(Comments, "~", "ca."))

# check for tilde after mutuate

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "100 meters"))

# try search for a special character "&"

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "&"))

# replace &  with 'and'
birdobs <- birdobs |>  
  mutate(
    Comments = str_replace_all(Comments, "&", "and"))

# check for & after mutuate

birdobs |>  
  select(Comments) |> 
  filter(str_detect(Comments, "corrals"))




# look for other special chars

birdobs |>  
  select(Comments) |> 
  distinct(Comments) |>
  print(n = 909)


write_csv(birdobs, "src/BirdObservationsThru2022_3b.csv")



  