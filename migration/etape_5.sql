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