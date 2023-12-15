########## ZONE BRYAN
donnees <- readRDS("H:/AAB Projets/projet-stat-2A-2023-2024/activation.Rdata")
attach(donnees)

#Analyse de stats descriptive
summary(donnees)

library(PCAmixdata)
acp = PCAmix(donnees[,-c(1,2)])

sexe = as.factor(donnees$Sexe)
plot(acp,choice = "ind",coloring.ind = sexe)

boxplot(donnees[,-c(1,2,3,4,5)])




########## ZONE JOANNE


########## ZONE FABIEN


########## ZONE NATHAN
data = readRDS("activation.Rdata")
attach(data)
summary(data)
library(PCAmixdata)
PCAmix()



