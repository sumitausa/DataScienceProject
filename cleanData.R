library(dplyr)
library(tidyr)

fitness <- read.csv(file="C:/Users/s/Documents/data.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

head(fitness)

fitness$NoStud5[fitness$NoStud5 == 0] <- NA

fitness$NoStud7[fitness$NoStud7 == 0] <- NA

fitness$NoStud9[fitness$NoStud9 == 0] <- NA

#clean up the percentage columns
 
fitness$Perc5b[is.na(fitness$NoStud5) & fitness$Perc5b ==0] <- NA    

fitness$Perc7b[is.na(fitness$NoStud7) & fitness$Perc7b ==0] <- NA 

fitness$Perc9b[is.na(fitness$NoStud9) & fitness$Perc9b ==0] <- NA 

View(fitness)                
                          

write.csv(fitness,file = "C:/Users/s/Documents/DataScience/DataScienceProject/fitness_clean.csv")