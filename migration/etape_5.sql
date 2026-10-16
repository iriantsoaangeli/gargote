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
-- Tables de la salle
CREATE TABLE tab (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    numero INT NOT NULL UNIQUE
);

--donnnees test
-- Serveurs
INSERT INTO serveur (nom) VALUES
    ('Njaka Rakoto'),
    ('Lalao Rasoa');

INSERT INTO tab(numero) VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8);

INSERT INTO commande (montant, dateCommande, idServeur) VALUES
    (7000, '2026-10-01', 5),
    (8500, '2026-10-02', 5),
    (12000, '2026-10-03', 6),
    (9500, '2026-10-04', 6),
    (6000, '2026-10-05', 5),
    (15000, '2026-10-06', 6);

INSERT INTO commandePlat (qte, idCommande, idPlat) VALUES
    (1, 1, 1),   -- Romazava
    (1, 2, 3),   -- Akoho sy voanio
    (1, 3, 1),   -- Romazava
    (1, 3, 5),   -- Soupe chinoise
    (1, 4, 2),   -- Ravitotot Sy henakisoa
    (2, 4, 6),   -- 2x Mofo Gasy
    (1, 5, 4),   -- Mi sao
    (1, 6, 2),   -- Ravitotot Sy henakisoa
    (1, 6, 3),   -- Akoho sy voanio
    (1, 6, 5);   -- Soupe chinoise