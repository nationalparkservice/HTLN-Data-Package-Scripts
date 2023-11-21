
library(tidyverse)

fishcounts <- read_csv("./FishCountsThru_2023.csv")

#problems(fishcounts)

view(fishcounts)


# Variable: Parkname -----------------------------------------------------------

# Unique list - PASS?

fishcounts |> distinct(ParkName)


# Variable: ParkCode -----------------------------------------------------------

# Unique list - PASS

fishcounts |> distinct(ParkCode)

# bar chart looking at count by park unit - PASS?

ParkCode_factor <- factor(fishcounts$ParkCode)

ggplot(fishcounts, aes(x = ParkCode)) + 
  geom_bar()



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
  print(n = 96)

fishcounts |> distinct(TributaryName) |> 
  print(n = 46)

fishcounts |> distinct(County) |> 
  print(n = 40)

# Variables: StretchNumber, ReachID --------------------------------------------


fishcounts |> distinct(LocationID,StretchNumber) |> 
  print(n = 40) 


fishcounts |> distinct(LocationID,ReachID) |>  
  print(n = 109)


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


fishcounts |>
  distinct(SamplingGear)


# Sampling variables -----------------------------------------------------------

s <- fishcounts |>
  distinct(SamplingGear, ChannelType, ChannelTypeDescr, SiteNumber)

view(s)  


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

# Variables: BatchID and BatchWT_g ---------------------------------------------

fishcounts |>
  distinct(BatchID) 

fishcounts |>
  distinct(BatchWT_g) 

ggplot(fishcounts, aes(x = BatchWT_g)) +  
  geom_histogram(binwidth = 10)

f <- fishcounts |>
  filter(BatchWT_g > 150)

ggplot(f, aes(x = BatchWT_g)) +  
  geom_histogram(binwidth = 10)

view(f)

# Variable:tbl_FishCommSppIndiv_Comments ---------------------------------------

fishcounts |>
  filter(!is.na(tbl_FishCommSppIndiv_Comments)) |>
  filter((LocationID == "BUFFRMFISHBM05")&(EventID == "BUFFRMFISH2006JUN12")) |>
  select(LocationID, EventID, tbl_FishCommSppIndiv_Comments) |>
  print(n = 1000)


distinct(LocationID, EventID, tbl_FishCommSppIndiv_Comments)  |>



