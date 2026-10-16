-- Chiffre d'affaire par servuer 
SELECT SUM(commande.id) AS nbCommande , sum(montant) AS chiffreAffaire, idServeur FROM commande LEFT JOIN serveur on serveur.id = idServeur GROUP BY idServeur

