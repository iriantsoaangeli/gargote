-- Ajouter la colonne categorie à la table CARTE
ALTER TABLE CARTE ADD COLUMN idCategorie INT;

--  Table categorie
 CREATE TABLE categorie(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50)
 );
