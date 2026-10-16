-- La carte
CREATE TABLE carte (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50) NOT NULL,
    prix INT NOT NULL,
);

-- Contrainte sur le prix
ALTER TABLE carte ADD CONSTRAINT prix_positive CHECK (prix > 0);

-- nom UNIQUE
ALTER TABLE carte ADD CONSTRAINT nom_unique UNIQUE (nom);

ALTER TABLE

-- Donnees test