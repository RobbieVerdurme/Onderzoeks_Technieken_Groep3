#Data inlezen
mijnData <- read.csv(file.choose())
data <- mijnData

#Waarden aanpassen voor titels boxplot
mijnData$rt <- as.character(mijnData$rt)
mijnData$muziek <- as.character(mijnData$muziek)

mijnData$rt[mijnData$rt=="Ja"] <- "Met Retrieval Practice"
mijnData$rt[mijnData$rt=="Nee"] <- "Zonder Retrieval Practice"

mijnData$muziek[mijnData$muziek=="Ja"] <- "Met Muziek"
mijnData$muziek[mijnData$muziek=="Nee"] <- "Zonder Muziek"

#Data vergelijken enkel retrieval practice
boxplot(score_1 ~ rt ,data = data, main="Resultatenanalyse Score 1",ylab="Retrieval Practice", ylim = c(0,25), xlab="Score",horizontal=TRUE, col = "skyblue")
boxplot(score_2 ~ rt ,data = data, main="Resultatenanalyse Score 2",ylab="Retrieval Practice", ylim = c(0,25), xlab="Score",horizontal=TRUE, col = "skyblue")

#Data vergelijken enkel muziek
boxplot(score_1 ~ muziek ,data = data, main="Resultatenanalyse Score 1",ylab="Muziek", ylim = c(0,25), xlab="Score",horizontal=TRUE, col = "skyblue")
boxplot(score_2 ~ muziek ,data = data, main="Resultatenanalyse Score 2",ylab="Muziek", ylim = c(0,25), xlab="Score",horizontal=TRUE, col = "skyblue")

#Data vergelijken met retrieval practice en muziek
boxplot(score_1 ~ rt/muziek ,data = mijnData, main="Resultatenanalyse Score 1",ylab="Variabelen", ylim = c(0,25), xlab="Score",horizontal=TRUE, col = "skyblue")
boxplot(score_2 ~ rt/muziek ,data = mijnData, main="Resultatenanalyse Score 2",ylab="Variabelen", ylim = c(0,25), xlab="Score",horizontal=TRUE, col = "skyblue")

#Data vergelijken met Muziek
MetMuziek_score1 <- c(data$score_1[data$muziek=="Ja"]) #count 86
MetMuziek_score2 <- c(data$score_2[data$muziek=="Ja"]) #count 89
test <- c("Test 1", "Test 2")

boxplot(MetMuziek_score1, MetMuziek_score2, names = test, main="Resultatenanalyse met muziek", ylab="Testen", ylim = c(0,25), xlab="Totaal Score", horizontal = TRUE,col = "skyblue")

#Data vergelijken zonder muziek
ZonderMuziek_score1 <- c(data$score_1[data$muziek=="Nee"]) #count 101
ZonderMuziek_score2 <- c(data$score_2[data$muziek=="Nee"]) #count 81
boxplot(ZonderMuziek_score1, ZonderMuziek_score2, names = test, main="Resultatenanalyse Zonder muziek", ylab="Testen", ylim = c(0,25), xlab="Totaal Score", horizontal = TRUE,col = "skyblue")

#Data vergelijken met rt
MetRT_score1 <- c(data$score_1[data$rt=="Ja"]) #count 99
MetRT_score2 <- c(data$score_2[data$rt=="Ja"]) #count 90

boxplot(MetRT_score1, MetRT_score2, names = test, main="Resultatenanalyse met Retrieval Practice", ylab="Testen", ylim = c(0,25), xlab="Totaal Score", horizontal = TRUE,col = "skyblue")

#Data vergelijken zonder rt
ZonderRT_score1 <- c(data$score_1[data$rt=="Nee"]) #count 88
ZonderRT_score2 <- c(data$score_2[data$rt=="Nee"]) #count 80

boxplot(ZonderRT_score1, ZonderRT_score2, names = test, main="Resultatenanalyse zonder Retrieval Practice", ylab="Testen", ylim = c(0,25), xlab="Totaal Score", horizontal = TRUE,col = "skyblue")