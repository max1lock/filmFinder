-- lancer mysql avec la commande suivante
-- mysql --local-infile=1 -u root -p

-- Insertion des données à partir du fichier TSV
LOAD DATA INFILE '/var/lib/mysql-files/film/title.basics/data.tsv'
INTO TABLE Film
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, @dummy, titre, @dummy, @dummy, @date, @dummy, @duree, @genres)
SET date = NULLIF(@date, '-1'),
    duree = NULLIF(@duree, '-1'),
    genres = NULLIF(@genres, '-1');

