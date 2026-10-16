-- Creer la table serveur 
CREATE TABLE serveur(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR NOT NULL  
);

-- Ajouter la colonne idServeur dans commande
ALTER TABLE commande ADD COLUMN idServeur INT ;

-- Nulle par defaut
ALTER TABLE commande ALTER COLUMN idServeur SET DEFAULT NULL; 

-- Foreign key serveur
ALTER TABLE commande ADD CONSTRAINT fk_serveur FOREIGN KEY (idServeur) REFERENCES serveur (id);
-- Tables de la salle
CREATE TABLE salle (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    numero INT NOT NULL UNIQUE
);

--donnnees test
-- Serveurs
INSERT INTO serveur (nom) VALUES
    ('Njaka Rakoto'),
    ('Lalao Rasoa');


INSERT INTO table_salle (numero) VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8);