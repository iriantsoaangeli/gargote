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



-- Donnees test

INSERT INTO carte (id, nom, prix) VALUES ( 'Romazava', 7000);

INSERT INTO carte (id, nom, prix) VALUES ( 'Ravitotot Sy henakisoa', 8000);

INSERT INTO carte (id, nom, prix) VALUES ( 'Akoho sy voanio', 8500);

INSERT INTO carte (id, nom, prix) VALUES ( 'Mi sao', 6000);

INSERT INTO carte (id, nom, prix) VALUES ( 'Soupe chinoise', 5000);

INSERT INTO carte (id, nom, prix) VALUES ( 'Mofo Gasy (Les 4)', 1000);

INSERT INTO carte (id, nom, prix) VALUES ( "Ranon'ampango", 500);