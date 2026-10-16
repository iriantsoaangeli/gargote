## Etape 1 
- CARTE : **id** , nom , prix (nouveau)

#### Quel type choisissez vous pour le prix ?
  - integer

#### Quel identifiant choissez vous ?
  - integer unique auto generee

## Etape 2 : 
- CARTE : **id** , nom , prix ,#idCategorie(modifie)
- CATEGORIE : **id** , nom (nouveau)

#### Pourquoi ne pas juste ajouter une colonne VARCHAR(50)
1. Si on a **soupes , soupe , lasopy** dans ces colonnes , pour chercher de la soupe il faudra ecrire : WHERE categorie="soupe" OR categorie="soupes" OR categorie="lasopy" plutot que : WHERE idCategorie = id de la categorie soupe
2. Ce probleme devien pire si il y a des **fautes de frappes** comme **sop** ou **soup** et que certains plats ne sont pas selectionnables si on ne connait pas chaque orthographe bizarre
3. Lorsqu'on cree un plat on tape la categorie pluto que de la selctionner 
