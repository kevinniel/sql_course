-- je veux un chat ou un male
SELECT *
FROM Animal
WHERE espece = "chat" OR sexe = "F"

-- je veux un chat ou un male MAIS PAS LES 2
SELECT *
FROM Animal
WHERE espece = "chat" XOR sexe = "F"

-- je veux tout récupérer, mais, "rangé" par ordre alphabétique
SELECT *
FROM Animal
ORDER BY nom ASC;

-- je veux tout récupérer, mais, "rangé" par sexe
-- de manière descendante, puis par nom
SELECT *
FROM Animal
ORDER BY sexe DESC, nom;

-- je veux tout récupérer trié par date
SELECT *
FROM Animal
ORDER BY date_naissance;

-- je veux tout récupérer trié par date, mais uniquement 2 résultats,
-- sauf le premier
SELECT *
FROM Animal
ORDER BY date_naissance DESC
LIMIT 2 OFFSET 1;

-- Je veux toutes les lignes qui ont des noms qui contiennent la lettre "a"
SELECT *
FROM Animal
WHERE nom
LIKE '%a%';

-- Je veux toutes les lignes qui ont des noms qui ne contiennent pas la lettre "a"
SELECT *
FROM Animal
WHERE nom
NOT LIKE '%a%';

-- rechercher les noms qui sont "Romain" ou "Romaine"
SELECT *
FROM Animal
WHERE nom = 'Romain'
OR nom = 'Romaine';

-- rechercher les noms qui sont "Romain" ou "Romaine"
SELECT *
FROM Animal
WHERE nom IN ('Romain', 'Romaine');