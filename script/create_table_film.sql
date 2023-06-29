-- Suppression des tables existantes
DROP TABLE IF EXISTS Personnes;
DROP TABLE IF EXISTS Critique;
DROP TABLE IF EXISTS Personnalites;
DROP TABLE IF EXISTS Film;

-- Table Film
CREATE TABLE Film (
  id VARCHAR(10) PRIMARY KEY,
  titre VARCHAR(500) NOT NULL,
  duree INT,
  genres VARCHAR(255),
  date INT
);

-- Table Personnalites
CREATE TABLE Personnalites (
  id VARCHAR(10) PRIMARY KEY,
  nom VARCHAR(255) NOT NULL,
  professions VARCHAR(255)
);

-- Table Personnes
CREATE TABLE Personnes (
  id_film VARCHAR(10),
  id_personnalites VARCHAR(10),
  poste VARCHAR(255),
  personnage VARCHAR(255),
  FOREIGN KEY (id_film) REFERENCES Film(id),
  FOREIGN KEY (id_personnalites) REFERENCES Personnalites(id)
);

-- Table Critique
CREATE TABLE Critique (
  id_film VARCHAR(10),
  notation DECIMAL(3, 1),
  nombreVotes INT,
  FOREIGN KEY (id_film) REFERENCES Film(id)
);
