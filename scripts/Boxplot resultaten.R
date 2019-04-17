mijnData <- read.csv(file.choose())
boxplot(score_1 ~ rt/muziek ,data = mijnData, main="Resultatenanalyse",ylab="Variabelen", xlab="Score",horizontal=TRUE, col = "skyblue")

#Waarden aanpassen voor titels boxplot
mijnData$rt <- as.character(mijnData$rt)
mijnData$muziek <- as.character(mijnData$muziek)

mijnData$rt[mijnData$rt=="Ja"] <- "Met Retrieval Practice"
mijnData$rt[mijnData$rt=="Nee"] <- "Zonder Retrieval Practice"

mijnData$muziek[mijnData$muziek=="Ja"] <- "Met Muziek"
mijnData$muziek[mijnData$muziek=="Nee"] <- "Zonder Muziek"
