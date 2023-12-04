
library(tidyverse)

dischargeinfo <- read_csv("./FishHabitat_DischargeGaugeInfo.csv")

problems(dischargeinfo)


view(dischargeinfo)

glimpse(dischargeinfo)


# Variable: Parkname -----------------------------------------------------------

# Unique list - PASS?

dischargeinfo |> distinct(ParkName)


# Variable: ParkCode -----------------------------------------------------------

# Unique list - PASS

dischargeinfo |> distinct(ParkCode)



ggplot(dischargeinfo, aes(x = ParkCode)) + 
  geom_bar()



# Variables: LocationID, LocationNumber, LocationType, LocationDescription -----

dischargeinfo |> distinct(LocationID) |> 
  print(n = 108)

dischargeinfo |> distinct(LocationNumber) |> # Can I omit LocationNumber??
  print(n = 40)

dischargeinfo |> distinct(LocationType) |> 
  print(n = 40)

dischargeinfo |> distinct(LocationDescription) |> 
  print(n = 70)

# Variables: StreamName, TributaryName, County ---------------------------------

dischargeinfo |> distinct(StreamName) |> 
  print(n = 96)

dischargeinfo |> distinct(TributaryName) |> 
  print(n = 46)

dischargeinfo |> distinct(County) |> 
  print(n = 40)

# Variables: StretchNumber, ReachID --------------------------------------------


dischargeinfo |> distinct(LocationID,StretchNumber) |> 
  print(n = 108) 


dischargeinfo |> distinct(LocationID,ReachID) |>  
  print(n = 109)


# Variables: PeriodID, EventID and related variables ---------------------------

 
t <- dischargeinfo |> 
  distinct(PeriodID, Season, tbl_SamplingPeriods_StartDate, 
           tbl_SamplingPeriods_EndDate, 
           EventID, tbl_SamplingEvents_StartDate, 
           tbl_SamplingEvents_EndDate, EventComments)

 view(t)
 

# Variables: ChannelType  ----------------------------------
 
 dischargeinfo |> distinct(ChannelType)
 
 
 # Variables: DischargeNo, DistnaceFromBank_m --
 
 dischargeinfo |> 
   distinct(DischargeNo) |>  
   print(n = 527)

dischargeinfo |> 
  distinct(DistanceFromBank_m) |>  
  print(n = 527)

ggplot(dischargeinfo, aes(x = DistanceFromBank_m)) +
  geom_histogram(binwidth = 1)

c <- dischargeinfo |>
  filter(DistanceFromBank_m > 0)

ggplot(c, aes(x = DistanceFromBank_m)) +
  geom_histogram(binwidth = 1)

 
 # Variable: Depth_cm -------------------------------------

ggplot(dischargeinfo, aes(x = Depth_cm)) +
  geom_histogram(binwidth = 1)

c <- dischargeinfo |>
  filter(Depth_cm > 0)

ggplot(c, aes(x = Depth_cm)) +
  geom_histogram(binwidth = 1)


 
 # Variables: PoolForm, Width_m, Depth_m. Velocity_ms --------------------------
 
 # What are PoolForms? Didn't see a lookup for that????
 
 dischargeinfo |>
   distinct(PoolForm, Width_m, Depth_cm, Velocity_ms)
 
 # Width_m
 
 ggplot(dischargeinfo, aes(x = Width_m)) +
   geom_histogram(binwidth = 1)
 
 c <- dischargeinfo |>
   filter(Width_m > 0)
 
 ggplot(c, aes(x = Width_m)) +
   geom_histogram(binwidth = 1)
 
 # Depth_m
 
 ggplot(dischargeinfo, aes(x = Depth_cm)) +
   geom_histogram(binwidth = 1)
 
 c <- dischargeinfo |>
   filter(Depth_cm > 0)
 
 ggplot(c, aes(x = Depth_cm)) +
   geom_histogram(binwidth = 5)
 
 # Velocity_ms
 
 ggplot(dischargeinfo, aes(x = Velocity_ms)) +
   geom_histogram(binwidth = 1)
 
 
 c <- dischargeinfo |>
   filter(Velocity_ms > 0)
 
 ggplot(c, aes(x = Velocity_ms)) +
   geom_histogram(binwidth = 0.01)
 
 # Variable: Comments
 
 dischargeinfo |>
   distinct(Comments)  |>  
   print(n = 45)
 
 # Variable: Units - drop this field??
 
 dischargeinfo |>
   distinct(Units)  |>  
   print(n = 45)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
