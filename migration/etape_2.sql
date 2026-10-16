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


-- Mettre a jour la table carte
UPDATE CARTE SET idCategorie = 1 WHERE id = 1;
UPDATE CARTE SET idCategorie = 1 WHERE id = 2;
UPDATE CARTE SET idCategorie = 1 WHERE id = 3;
UPDATE CARTE SET idCategorie = 2 WHERE id = 4;
UPDATE CARTE SET idCategorie = 3 WHERE id = 5;
UPDATE CARTE SET idCategorie = 4 WHERE id = 6;
UPDATE CARTE SET idCategorie = 5 WHERE id = 7;

-- Rendre la colonne obligatoire 
ALTER TABLE CARTE ALTER COLUMN categorie SET NOT NULL;
-- Ajouter FK
ALTER TABLE CARTE ADD CONSTRAINT fk_categorie FOREIGN KEY (categorie) REFERENCES categorie(id);