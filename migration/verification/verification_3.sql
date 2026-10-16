-- Prendre le montant de chaque

SELECT SUM(
   qte * (SELECT prix FROM carte WHERE id = idPLat)
) as total,idCommande FROM commandePlat JOIN  commande on commande.id = commandePlat.idCommande GROUP BY idCommande   