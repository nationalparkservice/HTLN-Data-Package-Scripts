
library(tidyverse)

locationdetails <- read_csv("./LocationDetails.csv")

problems(locationdetails)

view(locationdetails)

glimpse(locationdetails)  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< stopped here 12/27/2023


# Variable: Parkname -----------------------------------------------------------

# Unique list - PASS?

locationdetails |> distinct(ParkName)


# Variable: ParkCode -----------------------------------------------------------

# Unique list - PASS

locationdetails |> distinct(ParkCode)


ggplot(locationdetails, aes(x = ParkCode)) + 
  geom_bar()

# Variable: LocationID --------------------------------------------------------
  
  locationdetails |> distinct(LocationID) |> 
  print(n = 80)

# Variables PeriodID and EventID  ---------------------------

locationdetails |> distinct(PeriodID) |> 
  print(n = 73)

locationdetails |> distinct(EventID) |> 
  print(n = 296)

# Variables: TransectNumber, SampleLocation, SampleLocationDescr  -------------
 
 locationdetails |> distinct(TransectNumber)
 
 locationdetails |> distinct(SampleLocation, SampleLocationDescr)
 
 
 # Variables: ChannelType, ChannelTypeDescr  -------------
 
 locationdetails |> distinct(ChannelType, ChannelTypeDescr)
 
 # True/False Cover Info --------------------------------------
 
 locationdetails |> distinct(HydroMoss_HY)
 
 locationdetails |> distinct(Boulders_BO)
 
 locationdetails |> distinct(Artificial_AR)
 
 locationdetails |> distinct(SmallWoodDeb_SWD)
 
 locationdetails |> distinct(LargeWoodDeb_LWD)
 
 locationdetails |> distinct(TreesRoots_TR)
 
 locationdetails |> distinct(OverhangVeg_OV)
 
 locationdetails |> distinct(UndercutBank_UC)
 
 locationdetails |> distinct(Bluff_BL)
 
 # Comment ----------------------------------------------------

locationdetails |> 
  distinct(Comment) |>  
  print(n = 225)



 
 
 

