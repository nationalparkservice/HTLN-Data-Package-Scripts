




library(data.table)



birdobs <- fread("C:\\Users\\GRowell\\work\\Projects\\DataPackage\\dataset\\BirdObs.csv")

head(birdobs)

family <- head(birdobs$Family)

family

lfamily <- as.list(family)

is.list(lfamily)

lfamily



fwrite(lfamily, "C:\\Users\\GRowell\\work\\Projects\\DataPackage\\dataset\\family.csv")
