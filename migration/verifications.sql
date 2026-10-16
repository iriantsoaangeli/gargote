-- Etape 1 : Plat du plus cher au moins cher
SELECT * FROM CARTE ORDER BY prix DESC


-- Etape 2 : Nombre de plats par categorie , et plats sans categories
SELECT count(c.id),k.nom as nombre_plat FROM categorie k LEFT JOIN carte c ON c.idCategorie = k.id GROUP BY k.nom;