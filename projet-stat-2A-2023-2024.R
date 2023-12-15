donnees <- readRDS("H:/AAB Projets/projet-stat-2A-2023-2024/activation.Rdata")
attach(donnees)

#Analyse de stats descriptive
summary(donnees)

#ACP 

library(PCAmixdata)
acp = PCAmix(donnees[,-c(1,2)], graph = FALSE)
round(acp$eig,digits = 3)
round(acp$quanti$cos2,digit=3)

sexe = as.factor(donnees$Sexe)
plot(acp,choice = "ind",coloring.ind = sexe)

boxplot(donnees[,-c(1,2,3,4,5)])

#Regression linéaire

res<-lm(formula = PROD_G_Frontal_Inf_Tri_1_L ~ .,data= donnees[,-c(1,2)])
# Age,Volume_Cerebral,Index_Lateralisation_Hemispherique,PROD_G_Angular_2_L, PROD_G_Angular_2_R, PROD_G_Frontal_Inf_Tri_1_R, PROD_G_Hippocampus_1_L, PROD_G_Hippocampus_1_R, PROD_G_Occipital_Lat_1_L,PROD_G_Occipital_Lat_1_R,PROD_G_Rolandic_Oper_1_L,PROD_G_Rolandic_Oper_1_R, PROD_S_Sup_Temporal_4_L, PROD_S_Sup_Temporal_4_R
summary(res)











