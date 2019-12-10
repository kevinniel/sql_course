-- Vous devez obtenir la liste des races de chiens
-- qui sont des chiens de berger.
SELECT nom
FROM Race
WHERE nom LIKE '%Berger%';

-- Vous devez obtenir la liste des animaux (leur nom, date de naissance et race)
-- pour lesquels nous n'avons aucune information sur leur pelage.
-- pelage, poil, robe
SELECT Animal.nom, Animal.date_naissance, Animal.race_id, Race.nom, Race.description
FROM Animal
	LEFT JOIN Race
	ON Race.id = Animal.race_id
WHERE
	(
		Race.description NOT LIKE '%pelage%'
		AND Race.description NOT LIKE '%poil%'
		AND Race.description NOT LIKE '%robe%'
	)
	OR
	(
		Race.description IS NULL
	)
	OR Animal.race_id IS NULL
	;

-- Vous devez obtenir la liste des chats et des perroquets amazones,
-- avec leur sexe, leur espèce (nom latin) et leur race s'ils en ont une.
-- Regroupez les chats ensemble, les perroquets ensemble et,
-- au sein de l'espèce, regroupez les races.
SELECT
	Animal.sexe as sexe_animal,
	Espece.nom_latin as nom_latin_espece,
	Race.nom as nom_race
FROM Animal
INNER JOIN Espece
	ON Animal.espece_id = Espece.id
LEFT JOIN Race
	ON Animal.race_id = Race.id
WHERE Espece.nom_courant IN ('Chat', 'Perroquet amazone')
ORDER BY Espece.nom_courant DESC, Race.nom;

-- Vous devez obtenir la liste des chiennes dont on connaît la race,
-- et qui sont en âge de procréer (c'est-à-dire nées avant juillet 2008).
-- Affichez leurs nom, date de naissance et race.
SELECT
	Animal.nom as nom_animal,
	Animal.sexe as sexe,
	Animal.date_naissance as date_naissance,
	Espece.nom_courant as nom_espece,
	Race.nom as nom_race
FROM Animal
INNER JOIN Espece
	ON Animal.espece_id = espece.id
INNER JOIN Race
	ON Animal.race_id = race.id
WHERE 
	Espece.nom_courant = 'Chien'
AND
	Animal.sexe = 'F'
AND
	Animal.date_naissance < '2008-07-01';


-- Vous devez obtenir la liste des chats dont on connaît les parents,
-- ainsi que le nom de ces parents.
SELECT
	Animal.nom as nom_animal,
	Espece.nom_courant as nom_espece,
	animal_mere.nom as nom_mere,
	animal_pere.nom as nom_pere
FROM Animal
INNER JOIN Espece
	ON Animal.espece_id = espece.id
INNER JOIN Animal as animal_mere
	ON Animal.mere_id = animal_mere.id
INNER JOIN Animal as animal_pere
	ON Animal.pere_id = animal_pere.id
WHERE 
	Espece.nom_courant = 'Chat'
AND
	Animal.mere_id IS NOT NULL
AND
	Animal.pere_id IS NOT NULL












-- Vous devez obtenir la liste des animaux dont on connaît le père,
-- la mère, la race, la race du père, la race de la mère. Affichez
-- le nom et la race de l'animal et de ses parents, ainsi que l'espèce de
-- l'animal (pas des parents).













