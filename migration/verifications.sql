-- Etape 1 : Plat du plus cher au moins cher
SELECT * FROM CARTE ORDER BY prix DESC


-- Etape 2 : Nombre de plats par categorie , et plats sans categories
SELECT count(c.id),k.nom as nombre_plat FROM categorie k LEFT JOIN carte c ON c.idCategorie = k.id GROUP BY k.nom;

-- Etape 3 : Prendre le montant de chaque commande
SELECT SUM(
   qte * (SELECT prix FROM carte WHERE id = idPLat)
) as total,idCommande FROM commandePlat JOIN  commande on commande.id = commandePlat.idCommande GROUP BY idCommande   


-- Etape 4 : Commandes et leurs clients
SELECT * FROM commande join client on commande.idClient = client.id ;



-- Etape 5 : Chiffre d'affaire et nombre de commandes par serveur

SELECT SUM(commande.id) AS nbCommande , sum(montant) AS chiffreAffaire, idServeur FROM commande LEFT JOIN serveur on serveur.id = idServeur GROUP BY idServeur


