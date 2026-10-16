-- La table client
CREATE TABLE client(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50) NOT NULL
);

-- Client de passage en id 1
INSERT INTO client(nom) values('Client de passage')

-- Ajouter la colonne clien aux commandes 
ALTER TABLE commande ADD COLUMN idClient INT NOT NULL DEFAULT 1 ;