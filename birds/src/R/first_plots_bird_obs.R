

# tibbles and trying out ggplot


library(tidyverse)

birdobs2 <- read_csv("C:\\Users\\growell\\work\\HTLN-Data-Package-main\\src\\birdobs2.csv")

spec(birdobs2)

df <- as_tibble(birdobs2)

df

df <- filter(df, temp > 0, distance > 0)

ggplot(data = df) + 
  geom_point(mapping = aes(x = temp, y = distance))



  
