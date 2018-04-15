library(dplyr)
library(tidyr)

fitness <- read.csv(file="C:/Users/s/Documents/data.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

head(fitness)

fitness$NoStud5[fitness$NoStud5 == 0] <- NA

fitness$NoStud7[fitness$NoStud7 == 0] <- NA

fitness$NoStud9[fitness$NoStud9 == 0] <- NA

View(fitness)