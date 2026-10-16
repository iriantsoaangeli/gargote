-- Creer la table serveur 
CREATE TABLE serveur(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR NOT NULL  
);

-- Ajouter la colonne idServeur dans commande
ALTER TABLE commande ADD COLUMN idServeur INT ;