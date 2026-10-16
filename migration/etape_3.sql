-- Table des commandes
CREATE Table commande (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    montant INT NOT NULL,
    dateCommande DATE NOT NULL
);

ALTER TABLE commande
ADD CONSTRAINT montant_positive CHECK (montant > 0);

--Table de liaison
CREATE TABLE commandePlat (
    id INT PRIMARY KEy GENERATED ALWAYS AS IDENTITY,
    qte INT NOT NULL,
    idCommande INT NOT NULL,
    idPlat INT NOT NULL
);

-- Set les FOREIGN key
ALTER TABLE commandePlat
ADD CONSTRAINT fk_commande FOREIGN KEY (idCommande) REFERENCES commande (id);

ALTER TABLE commandePlat
ADD CONSTRAINT fk_plat FOREIGN KEY (idPlat) REFERENCES carte (id);

-- Contrainte sur la quantité
ALTER TABLE commandePlat ADD CONSTRAINT qte_positive CHECK (qte > 0);

-- Donnees test pour commmandes
INSERT INTO
    commande (montant, dateCommande)
VALUES (7000, '2026-10-01'),
    (8000, '2026-10-02'),
    (12000, '2026-10-03'),
    (9500, '2026-10-04'),
    (15000, '2026-10-05');

INSERT INTO
    commandePlat (qte, idCommande, idPlat)
VALUES (1, 1, 1), -- Romazava
    (1, 2, 2), -- Ravitotot Sy henakisoa
    (1, 3, 1), -- Romazava
    (1, 3, 5), -- Soupe chinoise
    (1, 4, 3), -- Akoho sy voanio
    (2, 4, 6), -- 2x Mofo Gasy
    (1, 5, 4), -- Mi sao
    (1, 5, 1), -- Romazava
    (1, 5, 5);
-- Soupe chinoise