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

-- Set les FOREIGN key
ALTER TABLE commandePlat ADD CONSTRAINT fk_commande FOREIGN KEY (idCommande) REFERENCES commande(id);
ALTER TABLE commandePlat ADD CONSTRAINT fk_plat FOREIGN KEY (idPlat) REFERENCES carte(id);