

# Purpose - to parse the hierarchy string column of TSN values
# Then join them to a lookup table from ITIS_longnames


library(tidyverse)


TSNhierarchy <- read_csv(
  "C:\\Users\\growell\\HTLN-BreedingBird-Data-Package\\src\\Hierarchy_Taxa.csv")

TSNlongnames <- read_csv(
  "C:\\Users\\growell\\HTLN-BreedingBird-Data-Package\\src\\Itis_longnames.csv")

glimpse(TSNhierarchy)

glimpse(TSNlongnames)


# select the hierarchy string column 
# and parse the first 7 values in separate columns

hierarchy = as_tibble(TSNhierarchy)
longnames = as_tibble(TSNlongnames)


my_string <- hierarchy |>
       select(hierarchy_string )

my_string


my_columns <- my_string |> 
  separate_wider_delim(
    hierarchy_string,
    delim = "-",
    names = c("col1", "col2", "col3", "col4", 
              "col5", "col6", "col7", "col8", "col9"),
    too_many = "drop"
  )


my_columns

longnames

# convert all character to char to numeric
my_numbers <- my_columns|> mutate_if(where(is.character), as.double)

my_columns

my_numbers
 

# Joins on tsn

longnames |> 
  count(tsn) |> 
  filter(n > 1)

########## completename from col1

my_numbers_col1 <- rename(my_numbers, tsn = col1)

my_numbers_col1 

my_join_col1 = my_numbers_col1 |> 
  inner_join(longnames, join_by(tsn))

my_join_col1

############## more completenames

my_numbers_col2 <- rename(my_numbers, tsn = col2)

my_numbers_col2 

my_join_col2 = my_numbers_col2 |> 
  inner_join(longnames, join_by(tsn))

my_join_col2

############## more completenames

my_numbers_col3 <- rename(my_numbers, tsn = col3)

my_numbers_col3 

my_join_col3 = my_numbers_col3 |> 
  inner_join(longnames, join_by(tsn))

my_join_col3

############## more completenames

my_numbers_col4 <- rename(my_numbers, tsn = col4)

my_numbers_col4 

my_join_col4 = my_numbers_col4 |> 
  inner_join(longnames, join_by(tsn))

my_join_col4

############## more completenames

my_numbers_col5 <- rename(my_numbers, tsn = col5)

my_numbers_col5 

my_join_col5 = my_numbers_col5 |> 
  inner_join(longnames, join_by(tsn))

my_join_col5


############## more completenames

my_numbers_col6 <- rename(my_numbers, tsn = col6)

my_numbers_col6 

my_join_col6 = my_numbers_col6 |> 
  inner_join(longnames, join_by(tsn))

my_join_col6


############## more completenames

my_numbers_col7 <- rename(my_numbers, tsn = col7)

my_numbers_col7 

my_join_col7 = my_numbers_col7 |> 
  inner_join(longnames, join_by(tsn))

my_join_col7

############## more completenames

my_numbers_col8 <- rename(my_numbers, tsn = col8)

my_numbers_col8 

my_join_col8 = my_numbers_col8 |> 
  inner_join(longnames, join_by(tsn))

my_join_col8


############## more completenames

my_numbers_col9 <- rename(my_numbers, tsn = col9)

my_numbers_col9 

my_join_col9 = my_numbers_col9 |> 
  inner_join(longnames, join_by(tsn))

my_join_col9










