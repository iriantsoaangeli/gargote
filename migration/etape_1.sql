-- La carte
CREATE TABLE carte (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50) NOT NULL,
    prix INT NOT NULL,
);


-- Donnees test