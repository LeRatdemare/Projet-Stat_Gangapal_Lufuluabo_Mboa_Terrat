# -------------------------------------
# Chargement du jeu de données
# -------------------------------------
eaux <- read.table("eaux.txt", header = TRUE, row.names = 1, sep = ";")
eaux

#----------------------------------------
# Chargement du package PCAmixdata
#----------------------------------------
require(PCAmixdata) # permet de charger le package "PCAmixdata"
# afin de pouvoir l’utiliser par la suite
help(PCAmix)

#----------------------------------------
# Mise en oeuvre de l’ACP
#----------------------------------------
res<-PCAmix(eaux) # tous les calculs de l’ACP sont stockes dans l’objet "res"
# NB : par defaut les graphiques des plans factoriels 1-2
# sont affiches a l’ecran
res <- PCAmix(eaux,graph=FALSE) # idem sans les graphiques
res # permet de voir l’ensemble des sorties numeriques disponibles

#-----------------------------------
# Choix du nombre d’axes ~A retenir
#-----------------------------------
round(res$eig,digit=2) # permet d’afficher les valeurs propres et les pourcentages
# de variances expliquees par chaque axe
# Graphique de l’ebouli des valeurs propres
barplot(res$eig[,1],main="Eigenvalues",names.arg=1:nrow(res$eig))
abline(h=1,col=2,lwd=2)

#--------------------------------------------------------------------
# Graphiques des individus et des variables sur le plan factoriel 1-2
#--------------------------------------------------------------------
?plot.PCAmix # permet d’afficher la fenetre d’aide de la commande "plot.PCA"
plot(res,axes=c(1,2),choice="ind") # on retrouve ici le graphique des individus (plan 1-2)
plot(res,axes=c(1,2),choice="cor") # on retrouve ici le cercle des correlations
# des variables (plan 1-2)
plot(res,axes=c(1,2),choice="sqload") # on retrouve ici le graphique des "square loadings" (plan 1-2)

#--------------------------------------------------------------------
# Sorties numeriques pour les individus et es variables
#--------------------------------------------------------------------
res$ind # permet d’afficher l’ensemble des sorties numeriques associees aux individus :
# coordonnees, contributions, cosinus carres
round(res$ind$cos2,digit=3) # uniquement les cosinus carres
res$quanti # permet d’afficher l’ensemble des sorties numeriques associees aux variables :
# coordonnees, contributions, cosinus carres
round(res$quanti$cos2,digit=3) # uniquement les cosinus carres



###################################################################
###################################################################
                            #EXERCICE 2
###################################################################
###################################################################

#data(decathlon) # Jeu de donnees provenant du package PCAmixdata
rslt100m = decathlon$`100m`
PCAmix(rslt100m)
