-- Ajout d'un chien dans la table "Animal"
INSERT INTO Animal 
VALUES (1, 'chien', 'M', '2010-04-05 13:43:00', 'Mordille beaucoup', 'Rox');

-- Ajout d'un chat dans la table "Animal"
INSERT INTO Animal (espece, sexe, date_naissance, commentaires, nom)
VALUES ('chat', 'F', '2015-02-25 18:18:18', 'Mordille pas beaucoup', 'Enzo');

-- Ajout d'une tortue dans la table "Animal"
INSERT INTO Animal (espece, sexe, date_naissance, commentaires, nom)
VALUES ('tortue', 'M', '2014-02-02 02:02:02', 'Aime le saucisson', 'Romain');

-- Ajout d'une tortue dans la table "Animal"
INSERT INTO Animal (espece, sexe, date_naissance, commentaires, nom)
VALUES ('tortue', 'F', '2014-02-02 02:02:02', 'Aime le paté', 'Romaine');

-- Affichage du contenu de la table
SELECT * FROM Animal;

-- Affichage uniquement de la colonne "espèce"
SELECT espece FROM Animal;

-- Affichage des colonnes "espèce" et "nom"
SELECT espece, nom FROM Animal;

-- Affichage uniquement de la colonne "espèce" en supprimant les doublons
SELECT DISTINCT espece FROM Animal;

-- Affichage du nombre de ligne dans "Animal"
SELECT count(*) FROM Animal;

-- Affichage du nombre de ligne dans "Animal" où l'espece est une "tortue"
SELECT count(*) FROM Animal WHERE espece = "tortue";

-- Affichage de tous les animaux qui sont des tortues
SELECT * FROM Animal WHERE espece = "tortue";

-- Affichage des noms de tous les animaux qui sont des tortues
SELECT nom FROM Animal WHERE espece = "tortue";





