-- Création de la table "animal"
CREATE TABLE IF NOT EXISTS Animal (
	-- Définition des champs
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	espece VARCHAR(40) NOT NULL,
	sexe CHAR(1),
	date_naissance DATETIME NOT NULL,
	commentaires TEXT,
	nom VARCHAR(30),
	-- Définition des clés primaires & étrangères
	PRIMARY KEY (id)
)
-- Définition du moteur
ENGINE=INNODB;
-- Fin de la création de la table "animal"