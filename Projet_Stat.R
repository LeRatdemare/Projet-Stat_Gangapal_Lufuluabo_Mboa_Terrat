########## ZONE BRYAN
donnees <- readRDS("H:/AAB Projets/projet-stat-2A-2023-2024/activation.Rdata")
attach(donnees)

#Analyse de stats descriptive
summary(donnees)

library(PCAmixdata)
acp = PCAmix(donnees[,-c(1,2)])

sexe = as.factor(donnees$Sexe)
plot(acp,choice = "ind",coloring.ind = sexe)



########## ZONE JOANNE


########## ZONE FABIEN


########## ZONE NATHAN