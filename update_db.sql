-- Création d'une table de test
CREATE TABLE IF NOT EXISTS Test_tuto (
	id INT NOT NULL,
	nom VARCHAR(10) NOT NULL,
  PRIMARY KEY(id)
)
ENGINE=INNODB;

-- Ajout d'une colonne "date d'insertion" dans la table "Test_tuto"
-- ALTER TABLE nom_table 
-- ADD [COLUMN] nom_colonne description_colonne;
ALTER TABLE Test_tuto
ADD COLUMN date_insertion DATE NOT NULL;

-- Suppression de la colonne "date d'insertion"
-- ALTER TABLE nom_table 
-- DROP [COLUMN] nom_colonne;
ALTER TABLE Test_tuto
DROP COLUMN date_insertion;

-- Changement de la colonne "nom" en "prenom"
-- ALTER TABLE nom_table 
-- CHANGE ancien_nom nouveau_nom description_colonne;
ALTER TABLE Test_tuto
CHANGE nom prenom VARCHAR(10) NOT NULL;

-- Modification de la colonne "prenom" en lui définissant une
-- valeur par défaut : "Kévin"
-- ALTER TABLE nom_table 
-- MODIFY nom_colonne nouvelle_description;
ALTER TABLE Test_tuto
MODIFY prenom VARCHAR(10) NOT NULL DEFAULT("Kevin");