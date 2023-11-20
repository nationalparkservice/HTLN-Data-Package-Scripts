
library(tidyverse)

fishcounts <- read_csv("./FishCountsThru_2023.csv")

problems(fishcounts)

view(fishcounts)


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

# Caused by comma in LocationDescription string
# Fix in csv file using Notepad++ 
# Will have to fix in the all-records fishcount csv file

fishcounts |>
  distinct(SamplingGear)

f <- fishcounts |>
  distinct(LocationID, PeriodID, LocationDescription)  |>
  filter(LocationID == "BUFFRMFISHBT21")

f <- fishcounts |>
  filter(LocationID == "BUFFRMFISHBT21")

view(f)


# Sampling variables -----------------------------------------------------------

s <- fishcounts |>
  distinct(SamplingGear, ChannelType, ChannelTypeDescr, SiteNumber)

view(s)  

# SiteNumber appears to have value of 1 always - is this true for all records?
# If so, should we omit SiteNumber??

# Variable: TaxaFishNumber ----------------------------------------------------

f <- fishcounts |>
  distinct(TaxaFishNumber)

view(f)

ggplot(fishcounts, aes(x = TaxaFishNumber)) + 
  geom_bar()

# This histogram suggests something changed for fishcounts over 31... Did they
# stop counting over 30 at somepoint??

# Variable: TotalLength_mm ----------------------------------------------------

f <- fishcounts |>
  distinct(TotalLength_mm)

view(f)

ggplot(fishcounts, aes(x = TotalLength_mm)) + 
  geom_bar()

f <- fishcounts |>
  filter(TotalLength_mm > 900)

ggplot(f, aes(x = TotalLength_mm)) + 
  geom_bar()

view(f)

# Variable: Vouchered ----------------------------------------------------------

fishcounts |>
  distinct(Vouchered) 

ggplot(fishcounts, aes(x = Vouchered)) + 
  geom_bar()

# Do we want to represent -1 and 0s as TRUE/FALSE 

# Variable: NumObs -------------------------------------------------------------

fishcounts |>
  count(NumObs, sort = TRUE) |>
  print(n = 204)

f <- fishcounts |>
  filter(NumObs > 1)

ggplot(f, aes(x = NumObs)) +  
  geom_bar()

f <- fishcounts |>
  arrange(desc(NumObs))

view(f)


