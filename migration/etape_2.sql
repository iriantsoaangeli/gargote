-- Ajouter la colonne categorie à la table CARTE
ALTER TABLE CARTE ADD COLUMN idCategorie INT;

--  Table categorie
 CREATE TABLE categorie(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50)
 );

-- Contrainte sur nom
ALTER TABLE categorie ADD CONSTRAINT nom_unique UNIQUE (nom);
ALTER TABLE categorie ADD CONSTRAINT nom_not_null CHECK (nom IS NOT NULL);

-- Donnees de categories

INSERT INTO categorie (nom) VALUES ('PLats Malagasy');
INSERT INTO categorie (nom) VALUES ('plats chinois');
INSERT INTO categorie (nom) VALUES ('soupes');
INSERT INTO categorie (nom) VALUES ('desserts');
INSERT INTO categorie (nom) VALUES ('Boissons');

