mean(na.omit(MetRT_score1))     #11.0303
mean(na.omit(MetRT_score2))     #9.077778
mean(na.omit(ZonderRT_score1))  #11.45455
mean(na.omit(ZonderRT_score2))  #9.15
mean(na.omit(ZonderMuziek_score1))#11.11881
mean(na.omit(ZonderMuziek_score2))#9.246914
mean(na.omit(MetMuziek_score1))#11.36047
mean(na.omit(MetMuziek_score2))#8.988764

#Data Gemidddelde RetrievalPractice Met muziek
#score 1
mean(na.omit(data$score_1[data$rt=="Ja "][data$muziek=="Nee"]))
mean(na.omit(data$score_1[data$rt=="Ja "][data$muziek=="Ja"]))
mean(na.omit(data$score_1[data$rt=="Nee"][data$muziek=="Nee"]))
mean(na.omit(data$score_2[data$rt=="Nee"][data$muziek=="Ja"]))

#score 2
mean(na.omit(data$score_2[data$rt=="Ja "][data$muziek=="Nee"]))
mean(na.omit(data$score_2[data$rt=="Ja "][data$muziek=="Ja"]))
mean(na.omit(data$score_2[data$rt=="Nee"][data$muziek=="Nee"]))
mean(na.omit(data$score_2[data$rt=="Nee"][data$muziek=="Ja"]))