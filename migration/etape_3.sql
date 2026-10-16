-- Table des commandes
CREATE Table commande(
    id INT  KEY GENERATED ALWAYS AS IDENTITY,
    montant INT NOT NULL,
    dateCommande DATE NOT NULL
);
