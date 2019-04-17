#read csv file and put it in variable data
data <- read.csv("retrieval-practice-experiment.csv")

#Barplot the colum woonplaats with names given to each colum and put horizontal
barplot(table(data$woonplaats), horiz = TRUE, names.arg = c("Geen antwoord","Anders", "Dorp", "Platteland", "Stad"))

