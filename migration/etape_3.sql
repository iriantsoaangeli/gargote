-- Table des commandes
CREATE Table commande (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    montant INT NOT NULL,
    dateCommande DATE NOT NULL
);

--Table de liaison
CREATE TABLE commandePlat (
    id INT PRIMARY KEy GENERATED ALWAYS AS IDENTITY,
    qte INT NOT NULL,
    idCommande INT NOT NULL,
    idPlat INT NOT NULL
);