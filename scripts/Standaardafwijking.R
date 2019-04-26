mijnData <- read.csv(file.choose())
data <- mijnData

#Data vergelijken met Muziek
MetMuziek_score1 <- c(data$score_1[data$muziek=="Ja"]) #count 86
MetMuziek_score2 <- c(data$score_2[data$muziek=="Ja"]) #count 89

#Standaardafwijking met muziek
MetMuziek_score1_zonderNA <- na.omit(c(data$score_1[data$muziek=="Ja"]))
MetMuziek_score2_zonderNA <- na.omit(c(data$score_2[data$muziek=="Ja"]))
sd(MetMuziek_score1_zonderNA)
sd(MetMuziek_score2_zonderNA)

#Standaardafwijking zonder muziek
ZonderMuziek_score1_zonderNA <- na.omit(c(data$score_1[data$muziek=="Nee"]))
ZonderMuziek_score2_zonderNA <- na.omit(c(data$score_2[data$muziek=="Nee"]))
sd(ZonderMuziek_score1_zonderNA)
sd(ZonderMuziek_score2_zonderNA)

#Tabel standaardafwijking muziek
tabel<- matrix(c(sd(MetMuziek_score1_zonderNA),sd(ZonderMuziek_score1_zonderNA),sd(MetMuziek_score2_zonderNA),sd(ZonderMuziek_score2_zonderNA)), ncol=2)
colnames(tabel) <- c('Score 1', 'Score 2')
rownames(tabel) <- c('Met muziek', 'Zonder muziek')
tabel.table <- as.table(tabel)


#Data vergelijken met rt
MetRT_score1_zonderNA <- na.omit(c(data$score_1[data$rt=="Ja "])) 
MetRT_score2_zonderNA <- na.omit(c(data$score_2[data$rt=="Ja "])) 


#Data vergelijken zonder rt
ZonderRT_score1_zonderNA <- na.omit(c(data$score_1[data$rt=="Nee"])) 
ZonderRT_score2_zonderNA <- na.omit(c(data$score_2[data$rt=="Nee"]))

#Standaardafwijking met rt
sd(MetRT_score1_zonderNA)
sd(MetRT_score2_zonderNA)

#Standaardafwijking zonder rt
sd(ZonderRT_score1_zonderNA)
sd(ZonderRT_score2_zonderNA)

#Tabel standaardafwijking rt
tabel<- matrix(c(sd(MetRT_score1_zonderNA),sd(ZonderRT_score1_zonderNA),sd(MetRT_score2_zonderNA),sd(ZonderRT_score2_zonderNA)), ncol=2)
colnames(tabel) <- c('Score 1', 'Score 2')
rownames(tabel) <- c('Met Retrieval Practice', 'Zonder Retrieval Practice')
tabel.table <- as.table(tabel)

#Effectgrootte (Cohen d effect size)
gemiddelde1 <- mean(ZonderMuziek_score1_zonderNA)
gemiddelde2 <- mean(MetMuziek_score1_zonderNA)
effectgrootte <- (gemiddelde2-gemiddelde1)/sd(ZonderMuziek_score1_zonderNA)

#Data standaardafwijking RetrievalPractice Met muziek
#score 1
sd(na.omit(data$score_1[data$rt=="Ja "][data$muziek=="Nee"]))
sd(na.omit(data$score_1[data$rt=="Ja "][data$muziek=="Ja"]))
sd(na.omit(data$score_1[data$rt=="Nee"][data$muziek=="Nee"]))
sd(na.omit(data$score_2[data$rt=="Nee"][data$muziek=="Ja"]))

#score 2
sd(na.omit(data$score_2[data$rt=="Ja "][data$muziek=="Nee"]))
sd(na.omit(data$score_2[data$rt=="Ja "][data$muziek=="Ja"]))
sd(na.omit(data$score_2[data$rt=="Nee"][data$muziek=="Nee"]))
sd(na.omit(data$score_2[data$rt=="Nee"][data$muziek=="Ja"]))


