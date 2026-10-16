
## Etape 4 :
- CARTE : **id** , nom , prix ,#idCategorie
- CATEGORIE : **id** , nom 
- COMMANDE : **id**, dateCommande , montant,#idClient (modifie)
- COMMANDEPLAT: **id** , #idCommande , #idPlat , qte
- Client : **id**, nom (nouveau)

#### Votre clé étrangère est-elle NOT NULL ? Quelle jointure faut-il pour ne perdre aucune commande ?
  On a deux options : 
  - Creer un client(1,'de passge') (mon choix) join par defaut select 
  - Rendre en nullable la Foreign key nullable , un left join
