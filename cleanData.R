library(dplyr)
library(tidyr)
library(ggplot2)

fitness <- read.csv(file="C:/Users/s/Documents/data.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)

head(fitness)

fitness$NoStud5[fitness$NoStud5 == 0] <- NA

fitness$NoStud7[fitness$NoStud7 == 0] <- NA

fitness$NoStud9[fitness$NoStud9 == 0] <- NA

#clean up rows that have no data for number of students tested in grade 5, 7 and 9
fitness <- fitness[!(is.na(fitness$NoStud5)) | !(is.na(fitness$NoStud7))| !(is.na(fitness$NoStud9)),]

#Clean up rows that dont have data about the excercies
fitness[!grepl("fitness", fitness$Line_Text),]


#clean up the percentage columns

fitness$Perc5b[is.na(fitness$NoStud5) & fitness$Perc5a ==0] <- NA   

fitness$Perc5b[is.na(fitness$NoStud5) & fitness$Perc5b ==0] <- NA    

fitness$Perc7b[is.na(fitness$NoStud7) & fitness$Perc7b ==0] <- NA 

fitness$Perc9b[is.na(fitness$NoStud9) & fitness$Perc9b ==0] <- NA 

View(fitness)                
g <- ggplot(data = fitness) + geom_bar(mapping = aes(x = Report_Number))
print(g)

g <- ggplot(data = fitness) + geom_bar(mapping = aes(x = factor(Line_Number)))
print(g)
g <- ggplot(data = fitness) + geom_bar(mapping = aes(x = factor(Line_Text)))

print(g)
g1 <- ggplot(data = fitness,mapping = aes(x= factor(Line_Number), y = SCHL)) + geom_line()
print(g1)
c <- fitness %>%   count(Line_Text)

print (c)
