
library(tidyverse)
# library(data.table)

fishcounts <- read_csv("./FishCountsThru_2023_small.csv")

glimpse(fishcounts)

# Variable: Parkname -----------------------------------------------------------

# Unique list - PASS?

fishcounts |> distinct(ParkName)

# bar chart looking at count by park unit - PASS?

ParkName_factor <- factor(fishcounts$ParkName)

ggplot(fishcounts, aes(x = ParkName_factor)) + 
  geom_bar()

# Variable: ParkCode -----------------------------------------------------------

# Unique list - PASS

fishcounts |> distinct(ParkCode)


# Variables: LocationID, LocationNumber, LocationType, LocationDescription -----

fishcounts |> distinct(LocationID) |> 
  print(n = 39)

fishcounts |> distinct(LocationNumber) |> # Can I omit LocationNumber??
  print(n = 40)

fishcounts |> distinct(LocationType) |> 
  print(n = 40)

fishcounts |> distinct(LocationDescription) |> 
  print(n = 40)

# Variables: StreamName, TributaryName, County ---------------------------------

fishcounts |> distinct(StreamName) |> 
  print(n = 40)

fishcounts |> distinct(TributaryName) |> 
  print(n = 40)

fishcounts |> distinct(County) |> 
  print(n = 40)

# Variables: StretchNumber, ReachID --------------------------------------------


fishcounts |> distinct(LocationID,StretchNumber) |> 
  print(n = 40) 

#Can I omit StretchNumber?? I think it was used only to designate the
# original stretch locations in GRITS.

fishcounts |> distinct(LocationID,ReachID) |>  
  print(n = 40)
#  What is T21 -> 241?
#  Do stream id's correspond to Dave's descriptions

# Variables: PeriodID, EventID and related variables ---------------------------

t <- fishcounts |>
  distinct(PeriodID, Season, tbl_SamplingPeriods_StartDate, 
           tbl_SamplingPeriods_EndDate, 
           EventID, tbl_SamplingEvents_StartDate, tbl_SamplingEvents_EndDate)

view(t)

# Remove tbl_ from variable names above

# Sampling variables -----------------------------------------------------------

s <- fishcounts |>
  select(SamplingGear, ChannelType, ChannelTypeDescr, SiteNumber)

view(s)

# Parsing problem here...

fishcounts |>
  distinct(SamplingGear)

fishcounts |>
  distinct(LocationID, PeriodID, EventID, SamplingGear)

