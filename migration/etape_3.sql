-- Table des commandes
CREATE Table commande(
    id INT PRIMARY PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    montant INT NOT NULL,
    dateCommande DATE NOT NULL
);
