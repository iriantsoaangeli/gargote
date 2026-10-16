-- Nombre de plat par categorie et nombre de plat pour sans categorie
SELECT count(c.id),k.nom as nombre_plat FROM categorie k LEFT JOIN carte c ON c.idCategorie = k.id GROUP BY k.nom;