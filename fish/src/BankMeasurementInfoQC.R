
library(tidyverse)

bankmeasures <- read_csv("./FishHabitat_BankMeasurementInfo.csv")

problems(bankmeasures)

view(bankmeasures)

glimpse(bankmeasures)


# Variable: Parkname -----------------------------------------------------------

# Unique list - PASS?

bankmeasures |> distinct(ParkName)


# Variable: ParkCode -----------------------------------------------------------

# Unique list - PASS

bankmeasures |> distinct(ParkCode)



ggplot(bankmeasures, aes(x = ParkCode)) + 
  geom_bar()



# Variables: LocationID, LocationNumber, LocationType, LocationDescription -----

bankmeasures |> distinct(LocationID) |> 
  print(n = 80)

bankmeasures |> distinct(LocationNumber) |> # Can I omit LocationNumber??
  print(n = 40)

bankmeasures |> distinct(LocationType) |> 
  print(n = 40)

bankmeasures |> distinct(LocationDescription) |> 
  print(n = 62)

# Variables: StreamName, TributaryName, County ---------------------------------

bankmeasures |> distinct(StreamName) |> 
  print(n = 96)

bankmeasures |> distinct(TributaryName) |> 
  print(n = 46)

bankmeasures |> distinct(County) |> 
  print(n = 40)

# Variables: StretchNumber, ReachID --------------------------------------------


bankmeasures |> distinct(LocationID,StretchNumber) |> 
  print(n = 80) 


bankmeasures |> distinct(LocationID,ReachID) |>  
  print(n = 109)


# Variables: PeriodID, EventID and related variables ---------------------------

 
t <- bankmeasures |> 
  distinct(PeriodID, tbl_SamplingPeriods_Season, tbl_SamplingPeriods_StartDate, 
           tbl_SamplingPeriods_EndDate, 
           EventID, tbl_SamplingEvents_StartDate, 
           tbl_SamplingEvents_EndDate, EventComments)
 view(t)


 
 
 
 
 
 
 
 