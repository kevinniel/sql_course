SELECT
	Animal.id,
	Animal.nom,
	Espece.nom_courant as nom_espece,
	Race.nom as nom_race,
	animal_pere.nom as nom_pere,
	race_pere.nom as nom_race_pere,
	animal_mere.nom as nom_mere,
	race_mere.nom as nom_race_mere
FROM
	Animal
INNER JOIN Animal as animal_pere
	ON animal_pere.id = Animal.pere_id
INNER JOIN Animal as animal_mere
	ON animal_mere.id = Animal.mere_id
INNER JOIN Espece
	ON Espece.id = Animal.espece_id
INNER JOIN Race
	ON Race.id = Animal.race_id
INNER JOIN Race as race_pere
	ON race_pere.id = animal_pere.race_id
INNER JOIN Race as race_mere
	ON race_mere.id = animal_mere.race_id

SELECT
	Animal.id,
	Animal.nom,
	(SELECT nom_courant FROM Espece WHERE id = Animal.espece_id) as nom_espece,
	(SELECT nom FROM Race WHERE id = Animal.race_id) as nom_race,
	(SELECT nom FROM Animal AS a WHERE a.id = Animal.pere_id) as nom_pere,
	(SELECT nom FROM Race AS r WHERE r.id = (SELECT race_id FROM Animal AS aa WHERE aa.id = Animal.pere_id)) as nom_race_pere,
	(SELECT nom FROM Animal AS aaa WHERE aaa.id = Animal.mere_id) as nom_mere,
	(SELECT nom FROM Race AS r WHERE r.id = (SELECT race_id FROM Animal AS aaaa WHERE aaaa.id = Animal.mere_id)) as nom_race_mere
FROM
	Animal
WHERE
	nom_pere IS NOT NULL