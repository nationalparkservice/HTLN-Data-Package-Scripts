




library(data.table)

df <- fread("C:\\Users\\GRowell\\work\\Projects\\DataPackage\\dataset\\small_dataset.csv")

df2 <- fread("C:\\Users\\GRowell\\work\\Projects\\DataPackage\\dataset\\medium_dataset.csv")

birdobs <- fread("C:\\Users\\GRowell\\work\\Projects\\DataPackage\\dataset\\BirdObs.csv")

head(birdobs)

head(birdobs$Family)

#fwrite(x, file = "", sep = ",")


